#!/usr/bin/env python3
"""Merge what the image answered with what the run directory holds, into analysis.json.

    analysis-merge.py <run-dir>

Reads <run>/analysis/in-image.json (written by 3-analyzeRun.sh from analysis.st),
<run>/manifest.json, <run>/mcp-calls.jsonl, <run>/exercise/exercise.json and the starting
code files, and writes <run>/analysis.json plus a short summary on stdout.

What is added here rather than in the image: the diff between the starting code and what the
agent left (classes and methods added, removed, changed), the tool-call statistics from the
server's own log, a classification of what the agent used smalltalk_evaluate for, and the
heuristic checks that regular expressions on method sources can make (initialize methods per
class, instance creation funnels, setters and getters, parameter name prefixes, comments).
"""

import json
import re
import statistics
import sys
from collections import Counter, defaultdict
from pathlib import Path


# ------------------------------------------------------------------ chunk-format parsing

def chunks_of(text):
    """Split Smalltalk chunk format: chunks end at a single '!', '!!' is an escaped '!'."""
    chunk, index = [], 0
    while index < len(text):
        character = text[index]
        if character == "!":
            if index + 1 < len(text) and text[index + 1] == "!":
                chunk.append("!")
                index += 2
                continue
            yield "".join(chunk)
            chunk = []
            index += 1
            continue
        chunk.append(character)
        index += 1
    if "".join(chunk).strip():
        yield "".join(chunk)


METHODS_FOR = re.compile(r"^\s*(\S+(?: class)?)\s+methodsFor:\s*'((?:[^']|'')*)'", re.S)
CLASS_DEFINITION = re.compile(r"^\s*(\S+)\s+(?:variable|weak|)subclass:\s*#(\w+)", re.M)


def methods_in_fileout(text):
    """Answer {(class, selector): source} and the class definitions of a chunk-format file."""
    text = text.replace("\r\n", "\n").replace("\r", "\n")
    methods, classes = {}, {}
    chunks = list(chunks_of(text))
    index = 0
    while index < len(chunks):
        chunk = chunks[index]
        header = METHODS_FOR.match(chunk)
        if header:
            class_name = header.group(1)
            index += 1
            while index < len(chunks):
                body = chunks[index]
                index += 1
                if body.strip() == "":
                    break                       # the "! !" that ends the category
                source = body.strip("\n")
                selector = selector_of(source)
                if selector:
                    methods[(class_name, selector)] = normalize(source)
            continue
        for definition in CLASS_DEFINITION.finditer(chunk):
            classes[definition.group(2)] = definition.group(1)
        index += 1
    return methods, classes


KEYWORD = re.compile(r"([A-Za-z_]\w*:)\s*[A-Za-z_]\w*")
BINARY = re.compile(r"^([-+*/\\<>=~@%&?,|]+)\s+[A-Za-z_]\w*")
UNARY = re.compile(r"^([A-Za-z_]\w*)\s*$")


def selector_of(source):
    pattern = source.strip().split("\n", 1)[0].strip()
    keywords = KEYWORD.findall(pattern)
    if keywords and pattern.split()[0].endswith(":"):
        return "".join(keywords)
    binary = BINARY.match(pattern)
    if binary:
        return binary.group(1)
    unary = UNARY.match(pattern)
    return unary.group(1) if unary else None


def normalize(source):
    return re.sub(r"\s+", " ", source.strip())


def argument_names_of(source):
    pattern = source.strip().split("\n", 1)[0].strip()
    if pattern.split()[0].endswith(":") or KEYWORD.search(pattern):
        return re.findall(r"\w+:\s*([A-Za-z_]\w*)", pattern)
    binary = BINARY.match(pattern)
    if binary:
        return [pattern.split()[-1]]
    return []


# ------------------------------------------------------------------ regex heuristics

STRING_LITERAL = re.compile(r"'(?:[^']|'')*'")
COMMENT = re.compile(r'"[^"]*"')


def comments_in(source):
    return len(COMMENT.findall(STRING_LITERAL.sub("''", source)))


def is_setter(source, selector, instance_variables):
    if selector.count(":") != 1 or not selector.endswith(":"):
        return False
    body = "\n".join(source.strip().split("\n")[1:]).strip().rstrip(".")
    match = re.fullmatch(r"(\w+)\s*(?::=|_)\s*(\w+)", COMMENT.sub("", body).strip())
    return bool(match) and match.group(1) in instance_variables


def is_plain_getter(source, selector, instance_variables):
    if ":" in selector or not selector.isidentifier():
        return False
    body = "\n".join(source.strip().split("\n")[1:]).strip().rstrip(".")
    return COMMENT.sub("", body).strip() in {f"^{name}" for name in instance_variables} | {f"^ {name}" for name in instance_variables}


def parameter_prefix_ok(name):
    return re.match(r"^(a|an|un|una|unos|unas)[A-Z]", name) is not None


def heuristics_over(methods, classes):
    """Regex-based checks over the method records the image answered."""
    variables_of = {record["name"]: set(record["instanceVariables"]) for record in classes}
    by_class = defaultdict(list)
    for method in methods:
        by_class[method["class"]].append(method)

    initialize_counts = {}
    creation_funnels = {}
    for class_name, records in by_class.items():
        initialize_counts[class_name] = sum(
            1 for m in records if not m["classSide"] and m["selector"].startswith("initialize"))
        creation_funnels[class_name] = sum(
            1 for m in records if m["classSide"] and re.search(r"\b(self|super)\s+(new|basicNew)\b", m["source"]))

    setters, getters, commented, bad_parameters = [], [], [], []
    for method in methods:
        name = f"{method['class']}{' class' if method['classSide'] else ''}>>{method['selector']}"
        instance_variables = variables_of.get(method["class"], set())
        if not method["classSide"] and is_setter(method["source"], method["selector"], instance_variables):
            setters.append(name)
        if not method["classSide"] and is_plain_getter(method["source"], method["selector"], instance_variables):
            getters.append(name)
        if comments_in(method["source"]):
            commented.append(name)
        for argument in argument_names_of(method["source"]):
            if not parameter_prefix_ok(argument):
                bad_parameters.append(f"{name} {argument}")

    return {
        "initializeMethodsPerClass": initialize_counts,
        "classesWithSeveralInitialize": sorted(c for c, n in initialize_counts.items() if n > 1),
        "classSideMethodsSendingNewPerClass": creation_funnels,
        "classesWithSeveralCreationFunnels": sorted(c for c, n in creation_funnels.items() if n > 1),
        "setters": setters,
        "plainGetters": getters,
        "methodsWithComments": commented,
        "parametersNotPrefixedWithArticle": bad_parameters,
    }


# ------------------------------------------------------------------ aggregation

COUNT_KEYS = ["sends", "ifs", "nilChecks", "nilReferences", "typeChecks", "identityComparisons",
              "sizeEqualsZero", "isEmptyIfTrue", "andOrWithoutBlock", "assertEquals",
              "assertOnEquality", "assertNot", "deny", "shouldRaise", "errorWithLiteralString"]


def nil_references_in(source):
    return len(re.findall(r"\bnil\b", COMMENT.sub("", STRING_LITERAL.sub("''", source))))


def aggregate(methods, classes):
    for method in methods:
        method["counts"]["nilReferences"] = nil_references_in(method.get("source", ""))
    class_names = {record["name"] for record in classes}
    if not methods:
        return {"classes": len(class_names), "methods": 0}
    sends = [m["counts"].get("sends", 0) for m in methods if m["counts"].get("parsed")]
    lines = [m["linesOfCode"] for m in methods]
    totals = {key: sum(m["counts"].get(key, 0) for m in methods) for key in COUNT_KEYS}
    per_hundred = {key: round(100 * value / len(methods), 2) for key, value in totals.items()}
    return {
        "classes": len(class_names),
        "methods": len(methods),
        "instanceMethods": sum(1 for m in methods if not m["classSide"]),
        "classMethods": sum(1 for m in methods if m["classSide"]),
        "linesOfCode": sum(lines),
        "linesPerMethod": {"mean": round(statistics.mean(lines), 2), "max": max(lines)},
        "sendsPerMethod": {"mean": round(statistics.mean(sends), 2) if sends else 0,
                           "max": max(sends) if sends else 0,
                           "over10": sum(1 for s in sends if s > 10)},
        "instanceVariablesPerClass": {r["name"]: len(r["instanceVariables"]) for r in classes},
        "maxInheritanceDepth": max((r["depth"] for r in classes), default=0),
        "methodsWithComments": sum(1 for m in methods if m["counts"].get("hasComment")),
        "unparsedMethods": [f"{m['class']}>>{m['selector']}" for m in methods if not m["counts"].get("parsed")],
        "totals": totals,
        "perHundredMethods": per_hundred,
    }


# ------------------------------------------------------------------ call log

DEFINES_CODE = re.compile(r"compile:|subclass:|defineMethod|methodsFor:|addInstVarName|removeSelector:|removeFromSystem|instanceVariableNames:", re.I)
REFLECTS = re.compile(r"allCallsOn|implementorsOf|sendersOf|allImplementorsOf|referencesTo|whichClassIncludesSelector|methodDict|sourceCodeAt|selectors\b|allInstVarNames|includesSelector|canUnderstand|respondsTo|SystemOrganization|categoryOfElement|allSubclasses|subclasses\b", re.I)
REFACTORS = re.compile(r"Refactoring|Rename\w*\b.*apply|ExtractMethod|InlineMethod|PushUp|PushDown|MoveMethod|ExtractClass", re.I)
RUNS_TESTS = re.compile(r"\bsuite\b|TestResult|\brun\b|debug:", re.I)


def classify_evaluate(code):
    if REFACTORS.search(code):
        return "refactoringEngine"
    if DEFINES_CODE.search(code):
        return "definesCode"
    if RUNS_TESTS.search(code):
        return "runsTests"
    if REFLECTS.search(code):
        return "reflection"
    return "other"


def load_call_log(path):
    """The server's call log, one record per tool call, each with the line it starts on. The
    server of 2026-09-11 writes the arguments of the multi-item tools over several lines (a raw
    newline between the items of an array), so a record is read by accumulating lines until they
    parse as JSON."""
    records, buffer, start = [], "", None
    for number, line in enumerate(open(path), 1):
        if not line.strip() and not buffer:
            continue
        if not buffer:
            start = number
        buffer += line
        try:
            record = json.loads(buffer)
        except ValueError:
            continue
        record["_line"] = start
        records.append(record)
        buffer = ""
    return records


BATCH_TOOL = "smalltalk_batch"


def mark_batch_steps(records):
    """The server logs each step of a batch as a record of its own tool and then the batch itself,
    so the len(steps) records before a batch record are its steps. Marks them (`_inBatch`) so that
    calls (what the agent sent) and operations (what the image did) can both be counted."""
    for index, record in enumerate(records):
        if record["tool"] == BATCH_TOOL:
            steps = (record.get("arguments") or {}).get("steps") or []
            for step_record in records[max(0, index - len(steps)):index]:
                step_record["_inBatch"] = record.get("sequence")
    return records


def agent_records_of(records, manifest):
    """The agent's calls: the records starting between the line bounds the runner wrote in the
    manifest (the harness's own calls come before and after them)."""
    bounds = manifest.get("mcpCallsLog", {})
    first = bounds.get("agentCallsFromLine", 1)
    last = bounds.get("agentCallsToLine", records[-1]["_line"] if records else 0)
    return [r for r in records if first <= r["_line"] <= last]


LIVE_TYPING_TOOLS = {"smalltalk_actual_implementors_of", "smalltalk_actual_senders_of", "smalltalk_types_of_instance_variable",
                     "smalltalk_types_of_instance_variables", "smalltalk_types_of_method_variable", "smalltalk_return_types_of_method",
                     "smalltalk_message_sends_of_method"}


def changes_code(record):
    tool = record["tool"]
    if tool.startswith(("smalltalk_define", "smalltalk_delete", "smalltalk_refactor", "smalltalk_classify")):
        return True
    if tool == "smalltalk_evaluate":
        return classify_evaluate(str((record.get("arguments") or {}).get("code", ""))) in ("definesCode", "refactoringEngine")
    return False


def uses_actual_scope(record):
    arguments = record.get("arguments") or {}
    return record["tool"].startswith("smalltalk_refactor") and any(
        "scope" in str(key).lower() and "actual" in str(value).lower() for key, value in arguments.items())


def test_run_failed(record):
    if not record["tool"].startswith("smalltalk_run_test"):
        return False
    answer = str(record.get("answer") or "")
    try:
        parsed = json.loads(answer)
        return bool(parsed.get("failedCount") or parsed.get("errorCount"))
    except (ValueError, AttributeError):
        return bool(re.search(r'"(failedCount|errorCount)":\s*[1-9]', answer)) or record.get("isError", False)


def process_signals(agent):
    """How the agent went about it: reading before changing, use of the type information, and
    the symptoms of not knowing the types (MessageNotUnderstood in answers, failing test runs)."""
    first_change = next((i for i, r in enumerate(agent) if changes_code(r)), len(agent))
    before = agent[:first_change]
    return {
        "callsBeforeFirstChange": first_change,
        "explorationCallsBeforeFirstChange": sum(1 for r in before if not r["tool"].startswith("smalltalk_run_test")),
        "liveTypingToolCalls": sum(1 for r in agent if r["tool"] in LIVE_TYPING_TOOLS),
        "actualScopeRefactoringCalls": sum(1 for r in agent if uses_actual_scope(r)),
        "messageNotUnderstoodAnswers": sum(1 for r in agent if re.search(r"MessageNotUnderstood|doesNotUnderstand|does not understand", str(r.get("answer") or "") + str(r.get("error") or ""))),
        "failedTestRuns": sum(1 for r in agent if test_run_failed(r)),
        "testRuns": sum(1 for r in agent if r["tool"].startswith("smalltalk_run_test")),
    }


def stream_statistics(run, manifest):
    """For a run without the server's log (the cuis-script cells): the agent's tool calls from the
    Claude Code stream, the scripts it ran from scripts.log, and which of those ran the tests."""
    stream = run / "claude-stream.jsonl"
    if not stream.exists():
        return None
    by_tool = Counter(); errors = 0; sequence = []; script_runs = []; index = 0
    for line in open(stream):
        try: r = json.loads(line)
        except ValueError: continue
        if r.get("type") == "assistant":
            for block in r["message"]["content"]:
                if block.get("type") != "tool_use": continue
                index += 1; name = block["name"]; by_tool[name] += 1; sequence.append(name)
                if name == "Bash" and "cuis.sh" in str((block.get("input") or {}).get("command", "")):
                    script_runs.append(index)
        elif r.get("type") == "user":
            content = (r.get("message") or {}).get("content")
            if isinstance(content, list):
                errors += sum(1 for b in content if b.get("type") == "tool_result" and b.get("is_error"))
    scripts = [l.rstrip("\n").split("\t") for l in open(run / "scripts.log")] if (run / "scripts.log").exists() else []
    test_runs = [i for i, s in enumerate(scripts) if len(s) > 1 and s[1] == "run-tests.st"]
    failed_scripts = sum(1 for s in scripts if len(s) > 2 and s[2] != "0")
    return {
        "agentCalls": index, "operations": index, "batchCalls": 0, "stepsInBatches": 0, "stepsPerBatch": None,
        "callsBeforeFirstChange": next((i for i, t in enumerate(sequence) if t in ("Edit", "Write")), len(sequence)),
        "explorationCallsBeforeFirstChange": next((i for i, t in enumerate(sequence) if t in ("Edit", "Write")), len(sequence)),
        "liveTypingToolCalls": 0, "actualScopeRefactoringCalls": 0, "messageNotUnderstoodAnswers": None,
        "failedTestRuns": None, "testRuns": len(test_runs), "defineCalls": None, "methodsDefined": None, "methodsPerDefineCall": None,
        "harnessCallsBefore": 0, "harnessCallsAfter": 0, "errors": errors, "totalMilliseconds": None, "totalAnswerChars": None,
        "byTool": {k: {"calls": v, "milliseconds": 0, "answerChars": 0, "errors": 0} for k, v in by_tool.most_common()},
        "evaluateKinds": {}, "evaluateSamples": {}, "sequence": sequence,
        "scriptRuns": len(scripts), "failedScriptRuns": failed_scripts, "testScriptRuns": len(test_runs),
        "firstTestScriptAt": (test_runs[0] + 1) if test_runs else None,
    }


def call_log_statistics(run, manifest):
    path = run / "mcp-calls.jsonl"
    if not path.exists():
        return stream_statistics(run, manifest)
    records = mark_batch_steps(load_call_log(path))
    agent = agent_records_of(records, manifest)
    calls = [r for r in agent if not r.get("_inBatch")]                 # what the agent sent: batches count once
    operations = [r for r in agent if r["tool"] != BATCH_TOOL]           # what the image did: steps count, batches do not
    batches = [r for r in agent if r["tool"] == BATCH_TOOL]
    agent = operations
    by_tool = defaultdict(lambda: {"calls": 0, "milliseconds": 0, "answerChars": 0, "errors": 0})
    evaluate_kinds = Counter()
    evaluate_samples = defaultdict(list)
    for record in agent:
        bucket = by_tool[record["tool"]]
        bucket["calls"] += 1
        bucket["milliseconds"] += record.get("milliseconds", 0)
        bucket["answerChars"] += len(str(record.get("answer", "")))
        bucket["errors"] += 1 if record.get("isError") else 0
        if record["tool"] == "smalltalk_evaluate":
            code = str(record.get("arguments", {}).get("code", ""))
            kind = classify_evaluate(code)
            evaluate_kinds[kind] += 1
            if len(evaluate_samples[kind]) < 3:
                evaluate_samples[kind].append(code[:160])
    sequence = [record["tool"].replace("mcp__Cuis__", "") for record in agent]
    process = process_signals(agent)
    define_calls = [record for record in agent if record["tool"] in ("smalltalk_define_method", "smalltalk_define_methods")]
    methods_defined = sum(len(methods_defined_by(record)) for record in define_calls)
    return {
        "agentCalls": len(calls),
        "operations": len(operations),
        "batchCalls": len(batches),
        "stepsInBatches": sum(1 for r in operations if r.get("_inBatch")),
        "stepsPerBatch": round(sum(1 for r in operations if r.get("_inBatch")) / len(batches), 2) if batches else None,
        **process,
        "defineCalls": len(define_calls),
        "methodsDefined": methods_defined,
        "methodsPerDefineCall": round(methods_defined / len(define_calls), 2) if define_calls else None,
        "harnessCallsBefore": (agent_records_of(records, manifest)[0]["_line"] - 1) if agent_records_of(records, manifest) else 0,
        "harnessCallsAfter": sum(1 for r in records if agent_records_of(records, manifest) and r["_line"] > agent_records_of(records, manifest)[-1]["_line"]),
        "errors": sum(1 for r in agent if r.get("isError")),
        "totalMilliseconds": sum(r.get("milliseconds", 0) for r in agent),
        "totalAnswerChars": sum(len(str(r.get("answer", ""))) for r in agent),
        "byTool": dict(sorted(by_tool.items(), key=lambda kv: -kv[1]["calls"])),
        "evaluateKinds": dict(evaluate_kinds),
        "evaluateSamples": dict(evaluate_samples),
        "sequence": sequence,
    }


# ------------------------------------------------------------------ diff against the starting code

CRYPTIC_NAME = re.compile(r"^(?:[CmvtsS]\d+[a-z]?|test\d+)$")


def name_recovery(run, exercise, in_image):
    """For a cryptic twin (exercise.json has crypticTwinOf and renames.json is next to it): how
    many of the names in the final code are still the cryptic ones, and how many of the original
    names the agent gave back, exactly (case-insensitive) or as a part of a longer name."""
    table = run / "exercise" / "renames.json"
    if not exercise.get("crypticTwinOf") or not table.exists():
        return None
    renames = json.load(open(table))
    originals = {k.lower() for k in renames["classes"]} | {k.split(">>", 1)[1].lower() for k in renames["selectors"]} | {k.split(".", 1)[1].lower() for k in renames["instanceVariables"]}
    original_words = {w for name in originals for w in re.findall(r"[a-z]+", name) if len(w) > 3}
    classes = [c["name"] for c in in_image.get("classes") or [] if not c.get("isTest")]
    selectors = [m["selector"] for m in in_image.get("methods") or [] if not m.get("isTest") and not str(m.get("class", "")).endswith("Test")]
    variables = [v for c in in_image.get("classes") or [] for v in (c.get("instanceVariables") or [])]
    def classify(names):
        cryptic = sum(1 for n in names if CRYPTIC_NAME.match(n) or all(CRYPTIC_NAME.match(part) for part in n.split(":") if part))
        recovered = sum(1 for n in names if n.lower().replace(":", "") in {o.replace(":", "") for o in originals})
        meaningful = sum(1 for n in names if not CRYPTIC_NAME.match(n) and any(w in n.lower() for w in original_words))
        return {"total": len(names), "cryptic": cryptic, "originalRecovered": recovered, "usingOriginalWords": meaningful}
    return {"classes": classify(classes), "selectors": classify(selectors), "instanceVariables": classify(variables), "renameToolCalls": None}


def acceptance_of(exercise, acceptance, in_image):
    """The given tests as the agent left them. In a cryptic twin the agent may rename the given
    test class itself (it usually does, back to a meaningful name), in which case the given class
    is gone and the acceptance is every test class of the package."""
    if isinstance(acceptance, dict) and acceptance.get("run"):
        return acceptance
    if exercise.get("crypticTwinOf"):
        own = in_image.get("agentTests")
        if isinstance(own, dict) and own.get("run"):
            return dict(own, rule="all test classes of the package: the given test class was renamed by the agent")
    return acceptance


def loose_changes(run):
    """What the agent changed outside the exercise package (extract-loose-changes.sh): methods on
    base classes, counted because a package that needs them does not work on its own."""
    path = run / "output" / "loose-changes.json"
    if not path.exists():
        return None
    data = json.load(open(path))
    return {"methodsOutsidePackage": len(data.get("methods") or []), "methods": data.get("methods"), "otherChangeSets": data.get("otherChangeSets")}


def diff_against_starting(run, exercise, in_image):
    starting_methods, starting_classes = {}, {}
    for relative in exercise.get("startingPackages") or []:
        path = run / "exercise" / relative
        if relative and path.is_file():
            methods, classes = methods_in_fileout(path.read_bytes().decode("utf-8", "replace"))
            starting_methods.update(methods)
            starting_classes.update(classes)
    final_methods = {}
    for method in in_image["methods"]:
        class_name = method["class"] + (" class" if method["classSide"] else "")
        final_methods[(class_name, method["selector"])] = normalize(method["source"])
    final_classes = {record["name"] for record in in_image["classes"]}
    added = sorted(f"{c}>>{s}" for (c, s) in final_methods.keys() - starting_methods.keys())
    removed = sorted(f"{c}>>{s}" for (c, s) in starting_methods.keys() - final_methods.keys())
    changed = sorted(f"{c}>>{s}" for key in final_methods.keys() & starting_methods.keys()
                     if final_methods[key] != starting_methods[key] for (c, s) in [key])
    return {
        "startingClasses": sorted(starting_classes),
        "classesAdded": sorted(final_classes - set(starting_classes)),
        "classesRemoved": sorted(set(starting_classes) - final_classes),
        "startingMethods": len(starting_methods),
        "finalMethods": len(final_methods),
        "methodsAdded": added,
        "methodsRemoved": removed,
        "methodsChanged": changed,
        "methodsUntouched": len(final_methods.keys() & starting_methods.keys()) - len(changed),
    }


# ------------------------------------------------------------------ what the agent did

def agent_metrics(run, manifest, calls):
    usage = {}
    if (run / "usage.json").exists():
        try:
            usage = json.load(open(run / "usage.json"))
        except ValueError:
            usage = {}
    tokens = {"input": 0, "cacheWrite": 0, "cacheRead": 0, "output": 0, "thinking": 0, "requests": 0}
    for bucket in (usage.get("per_model") or {}).values():
        tokens["input"] += bucket.get("input", 0)
        tokens["cacheWrite"] += bucket.get("cache_write_5m", 0) + bucket.get("cache_write_1h", 0)
        tokens["cacheRead"] += bucket.get("cache_read", 0)
        tokens["output"] += bucket.get("output", 0)
        tokens["thinking"] += bucket.get("thinking", 0)
        tokens["requests"] += bucket.get("requests", 0)
    result = manifest.get("result") or {}
    elapsed = manifest.get("elapsedSeconds") or 0
    sequence = calls["sequence"] if calls else []
    test_runs = [i for i, tool in enumerate(sequence) if tool.startswith("smalltalk_run_test")]
    if calls and calls.get("scriptRuns") is not None:
        test_runs = list(range(calls["testScriptRuns"]))  # counted from scripts.log; positions are not meaningful here
    defines = [i for i, tool in enumerate(sequence) if tool in ("smalltalk_define_method", "smalltalk_define_methods", "smalltalk_define_class")]
    return {
        "mode": manifest.get("mode", "headless"),
        "model": manifest.get("model"),
        "effort": manifest.get("effort"),
        "status": manifest.get("status"),
        "elapsedSeconds": elapsed,
        "turns": result.get("numTurns"),
        "costUsd": result.get("totalCostUsd") if result.get("totalCostUsd") is not None else usage.get("total_cost_usd"),
        "tokens": tokens,
        "toolsServed": manifest.get("toolsServed"),
        "toolDefinitionBytes": manifest.get("toolDefinitionBytes"),
        "toolCalls": calls["agentCalls"] if calls else None,
        "operations": calls["operations"] if calls else None,
        "batchCalls": calls["batchCalls"] if calls else None,
        "stepsPerBatch": calls["stepsPerBatch"] if calls else None,
        "toolCallsPerMinute": round(60 * calls["agentCalls"] / elapsed, 2) if calls and elapsed else None,
        "toolErrors": calls["errors"] if calls else None,
        "testRunCalls": len(test_runs),
        "scriptRuns": calls.get("scriptRuns") if calls else None,
        "failedScriptRuns": calls.get("failedScriptRuns") if calls else None,
        "firstTestRunAtCall": (test_runs[0] + 1) if test_runs else None,
        "definitionsBeforeFirstTestRun": sum(1 for i in defines if not test_runs or i < test_runs[0]),
        "defineCalls": calls["defineCalls"] if calls else None,
        "methodsDefined": calls["methodsDefined"] if calls else None,
        "methodsPerDefineCall": calls["methodsPerDefineCall"] if calls else None,
        "refactoringToolCalls": sum(1 for tool in sequence if tool.startswith("smalltalk_refactor_")),
        "evaluateKinds": calls["evaluateKinds"] if calls else None,
        **{key: (calls[key] if calls else None) for key in ("callsBeforeFirstChange", "explorationCallsBeforeFirstChange", "liveTypingToolCalls", "actualScopeRefactoringCalls", "messageNotUnderstoodAnswers", "failedTestRuns")},
    }


# ------------------------------------------------------------------ refactorings done by hand

PATTERN_TOOLS = {
    "manualRename": "smalltalk_refactor_rename_selector",
    "manualExtractMethod": "smalltalk_refactor_extract_method",
    "manualExtractFromSimilarCode": "smalltalk_refactor_extract_method_from_similar_code",
    "manualMoveMethod": "smalltalk_refactor_move_method",
    "manualInlineMethod": "smalltalk_refactor_inline_method",
    "manualChangeSignature": "smalltalk_refactor_add_parameter",
    "manualRenameClass": "smalltalk_refactor_rename_class",
    "manualRenameInstanceVariable": "smalltalk_refactor_rename_instance_variable",
}
CLASS_DEFINITION_CALL = re.compile(r"^\s*(\w+)\s+(?:variable|weak|)subclass:\s*#(\w+)\s+instanceVariableNames:\s*'([^']*)'", re.S)
WINDOW = 6


def body_of(source):
    lines = source.strip().replace("\r\n", "\n").replace("\r", "\n").split("\n")
    return normalize(COMMENT.sub("", "\n".join(lines[1:])))


def keywords_of(selector):
    return selector.split(":")[:-1] if ":" in selector else [selector]


def sends(body, selector):
    """Whether a normalized body sends a selector: its first keyword, or the unary or binary
    selector itself, as a token."""
    token = selector.split(":")[0] + ":" if ":" in selector else selector
    return re.search(r"(?<![\w:#])" + re.escape(token) + r"(?![\w:])", body or "") is not None


def methods_defined_by(record):
    """The (className, source) pairs a definition call carries: smalltalk_define_methods takes a
    list of methods (MCP server since 2026-09-11); smalltalk_define_method took one."""
    arguments = record.get("arguments") or {}
    if record["tool"] == "smalltalk_define_methods":
        methods = arguments.get("methods") or []
        if isinstance(methods, str):
            try:
                methods = json.loads(methods)
            except ValueError:
                methods = []
        return [(str(m.get("className", "")), str(m.get("source", ""))) for m in methods if isinstance(m, dict)]
    if record["tool"] == "smalltalk_define_method":
        return [(str(arguments.get("className", "")), str(arguments.get("source", "")))]
    return []


def names_listed_in(arguments, plural, singular):
    """A comma separated list under the plural key (the multi-item tools) or one name under the
    singular one (the older tools)."""
    listed = arguments.get(plural)
    if listed:
        return [name.strip() for name in str(listed).split(",") if name.strip()]
    single = arguments.get(singular)
    return [str(single)] if single else []


def manual_refactorings(run, manifest, exercise, tools_available):
    """Edits done with define/delete calls that a refactoring tool would have done safely.

    Every pattern is a heuristic over the call log: the sequence numbers it names let a reader
    check it against mcp-calls.jsonl. Bodies are compared normalized, pattern line removed."""
    path = run / "mcp-calls.jsonl"
    if not path.exists():
        return None
    if not path.exists():
        return {"manualRefactorings": 0, "byKind": {}, "findings": [], "note": "no server log: the run worked through scripts, not tools"}
    agent = [r for r in agent_records_of(mark_batch_steps(load_call_log(path)), manifest) if r["tool"] != BATCH_TOOL]

    known = {}                                  # (class, selector) -> body as last known
    for relative in exercise.get("startingPackages") or []:
        starting = run / "exercise" / relative
        if relative and starting.is_file():
            methods, _ = methods_in_fileout(starting.read_bytes().decode("utf-8", "replace"))
            for (class_name, selector), source in methods.items():
                known[(class_name, selector)] = body_of(source)
    classes_known = {}                          # class -> instance variable names

    events = []                                 # (index, kind, class, selector, body, sequence)
    for index, record in enumerate(agent):
        tool, arguments = record["tool"], record.get("arguments") or {}
        if tool in ("smalltalk_define_method", "smalltalk_define_methods"):
            for class_name, source in methods_defined_by(record):
                selector = selector_of(source) or ""
                events.append((index, "define", class_name, selector, body_of(source), record.get("sequence")))
        elif tool == "smalltalk_delete_method":
            for selector in names_listed_in(arguments, "selectors", "selector"):
                events.append((index, "delete", str(arguments.get("className", "")), selector, None, record.get("sequence")))
        elif tool == "smalltalk_define_class":
            match = CLASS_DEFINITION_CALL.match(str(arguments.get("definition", "")))
            if match:
                events.append((index, "defineClass", match.group(2), match.group(1), match.group(3).split(), record.get("sequence")))
        elif tool == "smalltalk_delete_class":
            for class_name in names_listed_in(arguments, "classNames", "className"):
                events.append((index, "deleteClass", class_name, "", None, record.get("sequence")))

    findings, redefinitions = [], Counter()
    starting_keys = set(known)
    given_methods_changed = set()
    defined_in_session = set()
    history = dict(known)
    previous_body = {}
    for position, (index, kind, class_name, selector, body, sequence) in enumerate(events):
        neighbours = [e for e in events[max(0, position - WINDOW):position + WINDOW + 1] if e is not events[position]]
        if kind == "define":
            key = (class_name, selector)
            if key in defined_in_session:
                redefinitions[f"{class_name}>>{selector}"] += 1
            if key in starting_keys:
                given_methods_changed.add(f"{class_name}>>{selector}")
            defined_in_session.add(key)
            old_body = history.get(key)
            # extract: a new method whose body was, until now, inside another method of the class
            if old_body is None and body:
                for (other_class, other_selector), other_body in list(history.items()):
                    if other_class == class_name and other_selector != selector and len(body) > 20 and body in other_body:
                        findings.append({"kind": "manualExtractMethod", "at": [sequence], "class": class_name,
                                         "from": other_selector, "to": selector})
                        break
            # move: same body known under another class, which gets deleted nearby
            if body:
                for (other_class, other_selector), other_body in list(history.items()):
                    if other_class != class_name and other_selector == selector and other_body == body:
                        deleted = [e for e in neighbours if e[1] == "delete" and e[2] == other_class and e[3] == selector]
                        if deleted:
                            findings.append({"kind": "manualMoveMethod", "at": [sequence, deleted[0][5]], "class": other_class,
                                             "from": f"{other_class}>>{selector}", "to": f"{class_name}>>{selector}"})
            previous_body[key] = old_body
            history[key] = body
            if old_body is None and body:
                callers = []
                for later in events[position + 1:position + 1 + WINDOW + 2]:
                    if later[1] != "define" or (later[2], later[3]) == key:
                        continue
                    before = history.get((later[2], later[3]))
                    if before is not None and not sends(before, selector) and sends(later[4], selector):
                        callers.append(f"{later[2]}>>{later[3]}")
                if callers:
                    findings.append({"kind": "manualExtractFromSimilarCode" if len(callers) > 1 else "manualExtractMethod",
                                     "at": [sequence], "class": class_name, "from": callers, "to": selector})
        elif kind == "delete":
            key = (class_name, selector)
            old_body = history.pop(key, None)
            for other in neighbours:
                if other[1] != "define" or other[2] != class_name or other[3] == selector:
                    continue
                if old_body is not None and other[4] == old_body:
                    findings.append({"kind": "manualRename", "at": [sequence, other[5]], "class": class_name,
                                     "from": selector, "to": other[3]})
                    break
                old_keywords, new_keywords = keywords_of(selector), keywords_of(other[3])
                if old_keywords != new_keywords and (sorted(old_keywords) == sorted(new_keywords)
                                                      or abs(len(old_keywords) - len(new_keywords)) == 1
                                                      and (set(old_keywords) <= set(new_keywords) or set(new_keywords) <= set(old_keywords))):
                    findings.append({"kind": "manualChangeSignature", "at": [sequence, other[5]], "class": class_name,
                                     "from": selector, "to": other[3]})
                    break
            # inline: a deleted method and a neighbour redefinition that stops sending it
            for other in neighbours:
                if other[1] == "define" and other[2] == class_name and other[3] != selector:
                    before = previous_body.get((class_name, other[3])) or ""
                    if selector in before and selector not in (other[4] or ""):
                        findings.append({"kind": "manualInlineMethod", "at": [sequence, other[5]], "class": class_name,
                                         "from": selector, "to": other[3]})
                        break
        elif kind == "defineClass":
            variables = body
            if class_name in classes_known and len(classes_known[class_name]) == len(variables) and classes_known[class_name] != variables:
                changed = [(a, b) for a, b in zip(classes_known[class_name], variables) if a != b]
                if len(changed) == 1:
                    findings.append({"kind": "manualRenameInstanceVariable", "at": [sequence], "class": class_name,
                                     "from": changed[0][0], "to": changed[0][1]})
            for other in neighbours:
                if other[1] == "deleteClass" and other[2] != class_name and classes_known.get(other[2]) == variables and variables:
                    findings.append({"kind": "manualRenameClass", "at": [sequence, other[5]], "class": other[2],
                                     "from": other[2], "to": class_name})
            classes_known[class_name] = variables

    # A refactoring done by hand right after the matching tool refused is a tool problem, not
    # an agent choice: every finding names the failed refactoring calls that preceded it.
    failed_tool_calls = [(index, record["tool"], record.get("sequence"), str(record.get("error"))[:120])
                         for index, record in enumerate(agent)
                         if record["tool"].startswith("smalltalk_refactor_") and record.get("isError")]
    sequence_index = {record.get("sequence"): index for index, record in enumerate(agent)}
    for finding in findings:
        tool = PATTERN_TOOLS.get(finding["kind"])
        finding["tool"] = tool
        finding["toolAvailable"] = tool in tools_available
        at = sequence_index.get(finding["at"][0], 0)
        finding["afterFailedToolCalls"] = [
            {"at": sequence, "tool": failed_tool, "error": error}
            for index, failed_tool, sequence, error in failed_tool_calls
            if at - 12 <= index < at and (tool is None or failed_tool == tool or "extract" in failed_tool and "extract" in (tool or ""))]
    by_kind = Counter(f["kind"] for f in findings)
    return {
        "definitions": sum(1 for e in events if e[1] == "define"),
        "deletions": sum(1 for e in events if e[1] == "delete"),
        "redefinitions": dict(redefinitions),
        "redefinedMethods": len(redefinitions),
        "givenMethodsRewritten": sorted(given_methods_changed),
        "manualRefactorings": len(findings),
        "byKind": dict(by_kind),
        "missedWhileToolAvailable": sum(1 for f in findings if f["toolAvailable"]),
        "afterAFailedToolCall": sum(1 for f in findings if f["afterFailedToolCalls"]),
        "failedRefactoringToolCalls": [{"at": s_, "tool": t, "error": e} for _, t, s_, e in failed_tool_calls],
        "refactoringToolsAvailable": sorted(t for t in tools_available if t.startswith("smalltalk_refactor_")),
        "findings": findings,
    }


def tools_available_in(run):
    path = run / "tools-list.json"
    if not path.exists():
        return set()
    return {tool["name"] for tool in json.load(open(path))}


def mentor_summary(findings):
    if not isinstance(findings, list):
        return {"status": findings}
    by_name = Counter(f.get("name") or f.get("heuristic") for f in findings if f.get("kind") != "error")
    return {
        "findings": sum(by_name.values()),
        "errors": sum(1 for f in findings if f.get("kind") == "error"),
        "byHeuristic": dict(by_name.most_common()),
    }


def llm_summary(review):
    if not isinstance(review, dict):
        return review
    reviews = review.get("reviews") or []
    cited = Counter()
    for item in reviews:
        for name in re.findall(r"\[([a-z0-9-]+)\]", item.get("rationale") or ""):
            cited[name] += 1
    return {
        "provider": review.get("provider"), "model": review.get("model"),
        "reviewed": len(reviews),
        "canImprove": sum(1 for r in reviews if r.get("canImprove") is True),
        "errors": sum(1 for r in reviews if "error" in r),
        "citedHeuristics": dict(cited.most_common()),
    }


# ------------------------------------------------------------------ main

def main():
    run = Path(sys.argv[1]).resolve()
    manifest = json.load(open(run / "manifest.json"))
    exercise = json.load(open(run / "exercise" / "exercise.json"))
    in_image = json.load(open(run / "analysis" / "in-image.json"))

    methods = in_image["methods"]
    test_classes = set(in_image["testClasses"])
    model_methods = [m for m in methods if m["class"] not in test_classes]
    test_methods = [m for m in methods if m["class"] in test_classes]
    model_classes = [c for c in in_image["classes"] if not c["isTest"]]
    test_class_records = [c for c in in_image["classes"] if c["isTest"]]

    calls = call_log_statistics(run, manifest)
    tools_available = tools_available_in(run)
    analysis = {
        "run": manifest.get("runId"),
        "scenario": manifest.get("scenario"),
        "config": manifest.get("config"),
        "technique": manifest.get("technique"),
        "exercise": exercise.get("name"),
        "package": in_image["package"],
        "status": manifest.get("status"),
        "cost": manifest.get("result", {}).get("totalCostUsd"),
        "turns": manifest.get("result", {}).get("numTurns"),
        "acceptance": acceptance_of(exercise, in_image.get("acceptanceTests"), in_image),
        "acceptanceClasses": in_image.get("acceptanceClasses"),
        "agentTests": in_image.get("agentTests"),
        "agentTestClasses": in_image.get("agentTestClasses"),
        "coverageByAgentTests": in_image.get("coverageByAgentTests"),
        "coverageByAllTests": in_image.get("coverageByAllTests"),
        "testSmells": in_image.get("testSmells"),
        "model": aggregate(model_methods, model_classes),
        "tests": aggregate(test_methods, test_class_records),
        "heuristics": {
            "model": heuristics_over(model_methods, model_classes),
            "tests": heuristics_over(test_methods, test_class_records),
        },
        "mentor": mentor_summary(in_image.get("mentorFindings")),
        "mentorFindings": in_image.get("mentorFindings"),
        "llmReview": llm_summary(in_image.get("llmReview")),
        "llmReviews": (in_image.get("llmReview") or {}).get("reviews") if isinstance(in_image.get("llmReview"), dict) else None,
        "diff": diff_against_starting(run, exercise, in_image),
        "looseChanges": loose_changes(run),
        "names": name_recovery(run, exercise, in_image),
        "agent": agent_metrics(run, manifest, calls),
        "refactoringOpportunities": manual_refactorings(run, manifest, exercise, tools_available),
        "toolCalls": calls,
        "classes": in_image["classes"],
        "methods": [{k: v for k, v in m.items() if k != "source"} for m in methods],
    }
    json.dump(analysis, open(run / "analysis.json", "w"), indent=2, ensure_ascii=False)

    def tests_line(label, result):
        if not isinstance(result, dict):
            return f"  {label:<18} {result}"
        return f"  {label:<18} {result['passed']}/{result['run']} passed, {result['failed']} failed, {result['errors']} errors"

    print(f"analysis of {run.name}: {analysis['scenario']} / {'+'.join(analysis['config'] or [])} / {analysis['technique']} / {analysis['exercise']}")
    print(tests_line("acceptance", analysis["acceptance"] or "none"))
    print(tests_line("agent tests", analysis["agentTests"] or "none"))
    def percent(coverage):
        return f"{coverage['percentCovered']:.1f}%" if isinstance(coverage, dict) else coverage
    print(f"  {'coverage':<18} by all tests {percent(analysis['coverageByAllTests'])}, by the agent's tests {percent(analysis['coverageByAgentTests'])}")
    smells = analysis["testSmells"]
    print(f"  {'test smells':<18} {len(smells) if isinstance(smells, list) else smells}")
    model = analysis["model"]
    print(f"  {'model':<18} {model['classes']} classes, {model['methods']} methods, "
          f"{model.get('sendsPerMethod', {}).get('mean', 0)} sends/method, {model.get('sendsPerMethod', {}).get('over10', 0)} over 10, "
          f"ifs {model.get('totals', {}).get('ifs', 0)}, nil checks {model.get('totals', {}).get('nilChecks', 0)}, type checks {model.get('totals', {}).get('typeChecks', 0)}")
    diff = analysis["diff"]
    print(f"  {'diff':<18} +{len(diff['methodsAdded'])} methods, ~{len(diff['methodsChanged'])} changed, -{len(diff['methodsRemoved'])} removed; classes +{len(diff['classesAdded'])} -{len(diff['classesRemoved'])}")
    calls = analysis["toolCalls"]
    if calls:
        print(f"  {'tool calls':<18} {calls['agentCalls']} by the agent, {calls['errors']} errors, evaluate kinds {calls['evaluateKinds']}")
    mentor = analysis["mentor"]
    print(f"  {'mentor':<18} {mentor.get('findings', mentor.get('status'))} findings {mentor.get('byHeuristic', '')}")
    agent = analysis["agent"]
    print(f"  {'agent':<18} {agent['model']} effort {agent['effort']}, {agent['elapsedSeconds']}s, cost ${agent['costUsd']}, tokens in {agent['tokens']['input']:,} cache-read {agent['tokens']['cacheRead']:,} out {agent['tokens']['output']:,}")
    opportunities = analysis["refactoringOpportunities"]
    if opportunities:
        print(f"  {'refactorings':<18} {opportunities['manualRefactorings']} done by hand {opportunities['byKind']}, {opportunities['missedWhileToolAvailable']} while a tool was available, {opportunities['afterAFailedToolCall']} right after the tool failed; {agent['refactoringToolCalls']} refactoring tool calls, {len(opportunities['failedRefactoringToolCalls'])} of them failed; {opportunities['redefinedMethods']} methods redefined")


if __name__ == "__main__":
    main()
