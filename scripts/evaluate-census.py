#!/usr/bin/env python3
"""Census of the smalltalk_evaluate calls the agents made in the Cuis runs: what they used
evaluate for, and which pieces of code they wrote again and again, run after run, that could be
methods in the image (scripts the agent calls through evaluate) instead of code it writes.

    evaluate-census.py [--json out.json] [--samples N]

Every agent evaluate of every analyzed Cuis run (not the pipeline checks, the interactive session,
the Codex smoke, or the Java, Python and script cells) gets one primary category, the first that
matches in this order, and any number of idioms, the recurring shapes inside the code:

  categories   defineCode, dumpSources, runTests, searchCode, navigate, probeLibrary,
               probeModel, environment
  idioms       see IDIOMS below; each one is a fragment of Smalltalk the agents rewrote by hand

Characters of code are the agent's output (what it had to write); characters of answer are
input the next request carries. About four characters make a token.
"""
import collections
import glob
import importlib.util
import json
import re
import sys
from pathlib import Path

PROJECT = Path(__file__).resolve().parent.parent
_spec = importlib.util.spec_from_file_location("am", PROJECT / "scripts" / "analysis-merge.py")
am = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(am)

SKIP_EXPERIMENTS = ("000-", "001-", "019-")
SKIP_SCENARIOS = ("java-gradle", "python-pytest", "cuis-script")

LIBRARY = r"\*\s*(?:kilo)?meters?\b|\*\s*(?:kilometer|meter|centimeter|millimeter|hour|minute|second|day|peso|dollar|milliliter|liter)s?\b|PlusInfinity|MinusInfinity|Measure\b|GregorianDateTime|GregorianDay|TimeOfDay|January|February|March|April|May|June|July|August|September|October|November|December|\bDate\b|\bTime\b|Duration|isWeekend|distanceTo:|Aconcagua|Chalten|installUnitsAsGlobals"

CATEGORIES = [
    ("defineCode", re.compile(r"compile:\s*\S|subclass:\s*#|removeSelector:|removeFromSystem|addInstVarName:|removeInstVarName:|\bcomment:\s*'|classify:\s*#?\w+\s+under:|\bcategory:\s*'|removeEmptyCategories|renameSilentlyTo:|rename:")),
    ("dumpSources", re.compile(r"(?:sourceCodeAt:|sourceCode\b|definition\b).*(?:do:|collect:|inject:)|(?:do:|collect:|inject:).*(?:sourceCodeAt:|sourceCode\b|definition\b)", re.S)),
    ("runTests", re.compile(r"TestResult|buildSuite|\bsuite\b|\bdebug\b|Test\w*\s+new\s+(?:setUp|test)\w*|\brun:\s|\bselector:\s*#test|TestCase\s+allSubclasses")),
    ("searchCode", re.compile(r"includesSubString:|includesSubstring:|allCallsOn:|allImplementorsOf:|sendersOf|implementorsOf|referencesTo|whichSelectorsReferTo|allReferencesTo|findString:")),
    ("navigate", re.compile(r"SystemOrganization|organization\b|listAtCategoryNamed:|classesAt:|categories\b|allSubclasses|subclasses\b|superclass\b|\bselectors\b|instVarNames|includesKey:|canUnderstand:|respondsTo:|includesSelector:|>>\s*#|\bdefinition\b|sourceCodeAt:")),
    ("environment", re.compile(r"asFileEntry|FileEntry|fileContents|Undeclared|saveImage|snapshot|Smalltalk\s+at:\s*#\w+\s+put:|installUnitsAsGlobals|Preferences|Feature\s+require")),
    ("probeLibrary", re.compile(LIBRARY)),
]

IDIOMS = {
    "compileBlock": (re.compile(r"\[\s*:\w+\s+:\w+\s+:\w+\s*\|\s*\w+\s+compile:\s*\w+\s+classified:\s*\w+\s*\]"),
                     "a local block [:cls :cat :src | cls compile: src classified: cat] to compile many methods"),
    "compileClassified": (re.compile(r"compile:\s*'.*?'\s*classified:", re.S), "compile: '...' classified: '...' written out per method"),
    "defineClassFull": (re.compile(r"subclass:\s*#\w+\s+instanceVariableNames:\s*'[^']*'\s+classVariableNames:\s*'[^']*'\s+poolDictionaries:\s*'[^']*'\s+category:", re.S),
                        "the five-keyword class definition message"),
    "dumpCategory": (re.compile(r"(?:listAtCategoryNamed:|classesAt:|category\s+(?:beginsWith:|=)|categories\s+select:).*(?:sourceCodeAt:|definition)", re.S),
                     "every class of a category: definition, then every method's source"),
    "writeStreamReport": (re.compile(r"WriteStream\s+on:\s*(?:String\s+new|\(String\s+new\))|String\s+new\s+writeStream|ReadWriteStream\s+on:"),
                          "a WriteStream the agent fills and answers with contents, to format a report"),
    "sortedSelectors": (re.compile(r"selectors\s+asSortedCollection|selectors\s+sorted|asSortedCollection.*selectors", re.S), "selectors asSortedCollection do:"),
    "braceProbe": (re.compile(r"^\s*\{.*\.\s*.*\}\s*(?:printString)?\s*\.?\s*$", re.S), "a brace array of probe expressions, answered at once"),
    "canUnderstandChecks": (re.compile(r"(?:canUnderstand:|respondsTo:|includesSelector:).*(?:canUnderstand:|respondsTo:|includesSelector:)", re.S),
                            "several canUnderstand:/respondsTo: checks: does the library have this message?"),
    "includesKeyChecks": (re.compile(r"includesKey:.*includesKey:", re.S), "several Smalltalk includesKey: checks: does this class exist?"),
    "allCallsOn": (re.compile(r"allCallsOn:|sendersOf|allImplementorsOf:"), "senders and implementors by hand"),
    "sourceSearch": (re.compile(r"sourceCodeAt:.*includesSub[Ss]tring:|includesSub[Ss]tring:.*sourceCodeAt:", re.S), "grep over method sources"),
    "categoryMatching": (re.compile(r"categories\s+select:\s*\[.*includesSub[Ss]tring:|categories\s+select:\s*\[.*beginsWith:", re.S), "find a category by a fragment of its name"),
    "runOneTestWithTrace": (re.compile(r"\[.*Test\w*\s+new.*\]\s*on:\s*Error.*(?:signalerContext|messageText|description)", re.S),
                            "run one test method by hand and answer the error with its context"),
    "onErrorDo": (re.compile(r"on:\s*(?:Error|Exception|UnhandledError)(?:\s*,\s*\w+)*\s+do:"), "wrap the expression in on: Error do: to see the error instead of losing it"),
    "removeEmptyCategories": (re.compile(r"removeEmptyCategories"), "organization removeEmptyCategories after moving methods"),
    "okSentinel": (re.compile(r"'ok'\s*\.?\s*$|\^\s*'ok'", re.I), "ending with 'ok' so the answer is short"),
    "recategorize": (re.compile(r"classify:\s*#?\w+\s+under:|\bcategory:\s*'|classify:\s*#\w+\s+under:"), "moving classes or methods to another category"),
    "classComment": (re.compile(r"\bcomment:\s*'"), "setting a class comment"),
    "unitsAndDates": (re.compile(LIBRARY), "probing Aconcagua units or Chalten dates"),
}


# Fixed text the agents wrote around the code itself, and roughly what each occurrence costs
# beyond what a short helper call would take.
BOILERPLATE = [
    ("five-keyword class definition", r"subclass:\s*#\w+\s+instanceVariableNames:\s*'[^']*'\s+classVariableNames:\s*'[^']*'\s+poolDictionaries:\s*'[^']*'\s+category:", 66),
    ("compile: ... classified: per method", r"compile:\s*'", 25),
    ("value: Class value: 'category' value: per method (the agent's compile block)", r"value:\s*\S+\s+value:\s*'[^']*'\s+value:\s*'", 30),
    ("organization removeEmptyCategories", r"removeEmptyCategories", 35),
]


def primary_category(code):
    for name, pattern in CATEGORIES:
        if pattern.search(code):
            return name
    return "probeModel"


def collect():
    evaluates, runs = [], 0
    for log in sorted(glob.glob(str(PROJECT / "experiments/*/cells/*/*/*/mcp-calls.jsonl"))):
        run = Path(log).parent
        cell = run.parts[-3]
        experiment = run.parent.parent.parent.parent.name
        scenario, config = cell.split("_")[0], cell.split("_")[1]
        if experiment.startswith(SKIP_EXPERIMENTS) or scenario in SKIP_SCENARIOS or not (run / "manifest.json").exists():
            continue
        manifest = json.load(open(run / "manifest.json"))
        try:
            records = am.mark_batch_steps(am.agent_records_of(am.load_call_log(log), manifest))
        except (ValueError, KeyError):
            continue
        runs += 1
        sent = [r for r in records if not r.get("_inBatch")]
        position = {id(r): index for index, r in enumerate(sent)}
        for record in records:
            if record.get("tool") != "smalltalk_evaluate":
                continue
            code = str((record.get("arguments") or {}).get("code", ""))
            answer = record.get("answer") if record.get("answer") is not None else record.get("result", "")
            answer = answer if isinstance(answer, str) else json.dumps(answer)
            evaluates.append({"experiment": experiment, "scenario": scenario, "config": config, "exercise": run.parent.name, "run": run.name,
                              "code": code, "answerChars": len(answer), "inBatch": bool(record.get("_inBatch")),
                              "requestsAfter": (len(sent) - position[id(record)] - 1) if id(record) in position else 0,
                              "errorText": str(record.get("error") or "")[:300],
                              "error": bool(record.get("error")) or answer.lstrip().startswith(("Error", "ERROR")) or "doesNotUnderstand" in answer[:300]})
    return evaluates, runs


def main():
    samples = int(sys.argv[sys.argv.index("--samples") + 1]) if "--samples" in sys.argv else 1
    evaluates, runs = collect()
    for e in evaluates:
        e["category"] = primary_category(e["code"])
        e["idioms"] = [name for name, (pattern, _) in IDIOMS.items() if pattern.search(e["code"])
                       and not (name == "unitsAndDates" and e["category"] == "defineCode")]
    total_code = sum(len(e["code"]) for e in evaluates) or 1
    total_answer = sum(e["answerChars"] for e in evaluates) or 1
    print(f"{len(evaluates)} evaluates in {runs} runs; {total_code:,} characters of code written, {total_answer:,} characters answered\n")

    print("| Category | Evaluates | Runs | Code chars | Share of code | Answer chars | Median code chars | Errors |")
    print("|---|---|---|---|---|---|---|---|")
    by_category = collections.defaultdict(list)
    for e in evaluates:
        by_category[e["category"]].append(e)
    for name, _ in CATEGORIES + [("probeModel", None)]:
        items = by_category.get(name, [])
        if not items: continue
        code = sum(len(e["code"]) for e in items); answer = sum(e["answerChars"] for e in items)
        sizes = sorted(len(e["code"]) for e in items)
        print(f"| {name} | {len(items)} | {len({(e['experiment'], e['run']) for e in items})} | {code:,} | {100 * code / total_code:.0f}% | {answer:,} | {sizes[len(sizes) // 2]} | {sum(e['error'] for e in items)} |")

    print("\n| Idiom | Evaluates | Runs | Experiments | Code chars in those evaluates | What it is |")
    print("|---|---|---|---|---|---|")
    stats = []
    for name, (_, description) in IDIOMS.items():
        items = [e for e in evaluates if name in e["idioms"]]
        if not items: continue
        stats.append((len(items), name, description, items))
    for count, name, description, items in sorted(stats, reverse=True):
        print(f"| {name} | {count} | {len({(e['experiment'], e['run']) for e in items})} | {len({e['experiment'] for e in items})} | {sum(len(e['code']) for e in items):,} | {description} |")

    print("\n| Boilerplate | Occurrences | Characters each, about | Characters in all |")
    print("|---|---|---|---|")
    for label, pattern, each in BOILERPLATE:
        found = [m for e in evaluates for m in re.findall(pattern, e["code"], re.S)]
        print(f"| {label} | {len(found)} | {each} | {len(found) * each:,} |")

    failures = [e for e in evaluates if e["errorText"]]
    unknown = collections.Counter(m.group(1) for e in failures for m in [re.search(r"MessageNotUnderstood: (\S+>>\S+)", e["errorText"])] if m)
    print(f"\n{len(failures)} evaluates failed, in {len({(e['experiment'], e['run']) for e in failures})} runs; "
          f"{sum(unknown.values())} of them with MessageNotUnderstood. The messages that do not exist, most asked for:\n")
    print("| Message | Times |")
    print("|---|---|")
    for message, times in unknown.most_common(20):
        print(f"| `{message}` | {times} |")

    dumps = [e for e in evaluates if e["category"] == "dumpSources" and not e["inBatch"]]
    reread = sum(e["answerChars"] / 4 * e["requestsAfter"] for e in dumps)
    print(f"\nSource dumps: {len(dumps)} answers, median {sorted(e['answerChars'] for e in dumps)[len(dumps) // 2]:,} characters, "
          f"median {sorted(e['requestsAfter'] for e in dumps)[len(dumps) // 2]} requests after them; "
          f"about {reread:,.0f} tokens re-read in the requests that followed (answer characters / 4 x requests after).")

    if samples:
        print()
        for count, name, description, items in sorted(stats, reverse=True):
            print(f"--- {name}")
            for e in sorted(items, key=lambda e: len(e["code"]))[len(items) // 2: len(items) // 2 + samples]:
                print(f"    [{e['experiment'][:3]} {e['category']} {len(e['code'])} chars] {e['code'][:260]!r}")

    if "--json" in sys.argv:
        json.dump(evaluates, open(sys.argv[sys.argv.index("--json") + 1], "w"), indent=1)


if __name__ == "__main__":
    main()
