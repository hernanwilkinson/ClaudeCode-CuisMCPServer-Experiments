#!/usr/bin/env python3
"""Make the cryptic twin of a refactoring exercise: the same starting code with every name the
exercise's author chose replaced by a meaningless one, the comments removed and (level 2) the
string and symbol literals replaced by codes, so that an experiment can compare an agent
refactoring well-named code against the same code with cryptic names.

    obfuscate-exercise.py <exercise-dir> <twin-name> <twin-package> [--level 1|2|3]

Level 3 also hides the domain in the statement: every word the author's names were made of
(the words of the class, selector, variable, symbol names and of the title, split from their
camelCase) is replaced in spec.md by a code word w1, w2, ..., with its plural and verb forms,
outside code spans; renames.json keeps the word table under "words".

The renaming is done by the image's refactoring engine over the MCP server of the analysis
image (rename class, selector, instance variable and temporary keep every sender and the tests
consistent); literals and comments are rewritten from the parse of each method. Names shared
with the base library (a selector some base class implements, an inherited one) are kept, so
the code stays Smalltalk. The twin gets starting/<package>.pck.st, exercise.json, spec.md with
the same renaming applied to the names it quotes, and renames.json with the whole table.
"""
import json
import re
import shutil
import socket
import subprocess
import sys
import time
from pathlib import Path

PROJECT = Path(__file__).resolve().parent.parent
MCP = PROJECT / "scripts" / "mcp-client.py"
KEEP_SELECTORS = {"initialize", "setUp", "tearDown", "printOn:", "=", "hash", "new", "value", "value:", "name", "size", "isEmpty", "notEmpty", "do:", "includes:", "add:", "remove:", "at:", "at:put:", "copy", "postCopy", "species", "class", "yourself"}


class Image:
    def __init__(self):
        manifest = json.load(open(PROJECT / "scenarios" / "analysis" / "manifest.json"))
        self.vm = manifest["vm"]; self.image = PROJECT / "scenarios" / "analysis" / manifest["image"]
        s = socket.socket(); s.bind(("127.0.0.1", 0)); self.port = s.getsockname()[1]; s.close()
        self.token = subprocess.check_output(["openssl", "rand", "-hex", "16"], text=True).strip()
        self.process = subprocess.Popen([self.vm, "-headless", str(self.image), f"--mcpHttpPort={self.port}"], env={"SMALLTALK_MCP_TOKEN": self.token, "PATH": "/usr/bin:/bin"}, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        subprocess.run(["python3", MCP, "--port", str(self.port), "--token", self.token, "wait", "120"], check=True, capture_output=True)

    def call(self, tool, arguments):
        out = subprocess.run(["python3", MCP, "--port", str(self.port), "--token", self.token, "call", tool, json.dumps(arguments)], capture_output=True, text=True)
        return out.stdout.rstrip("\n") if out.returncode == 0 else f"ERROR: {out.stdout}{out.stderr}"

    def evaluate(self, code):
        out = subprocess.run(["python3", MCP, "--port", str(self.port), "--token", self.token, "evaluate", code], capture_output=True, text=True)
        text = out.stdout.rstrip("\n")
        if text.startswith("'") and text.endswith("'"):
            text = text[1:-1].replace("''", "'")
        return text

    def evaluate_json(self, code):
        text = self.evaluate(f"Json render: ([ {code} ] value)")
        try:
            return json.loads(text)
        except ValueError:
            raise RuntimeError(f"not JSON from the image: {text[:300]!r}\n  for: {code[:300]}")

    def stop(self):
        self.process.kill(); self.process.wait()


def run_tests(image, package):
    return image.evaluate(f"| r | r := TestResult new. ((Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: '{package}' ]) select: [ :c | c inheritsFrom: TestCase ]) do: [ :c | c buildSuite run: r ]. r runCount printString, ' run ', r passedCount printString, ' passed'")


def strip_comments_and_map_literals(source, symbols, strings, level):
    """Walk the source once: drop comments, map symbol and string literals (level 2)."""
    out, i, n = [], 0, len(source)
    while i < n:
        c = source[i]
        if c == '"':
            j = source.find('"', i + 1)
            if j < 0: out.append(source[i:]); break
            i = j + 1
            continue
        if c == "'":
            j = i + 1
            while j < n:
                if source[j] == "'" and j + 1 < n and source[j + 1] == "'": j += 2; continue
                if source[j] == "'": break
                j += 1
            literal = source[i + 1:j].replace("''", "'")
            if level >= 2 and literal.strip():
                if literal not in strings: strings[literal] = f"S{len(strings) + 1}"
                out.append(f"'{strings[literal]}'")
            else:
                out.append(source[i:j + 1])
            i = j + 1
            continue
        if c == "#" and i + 1 < n and (source[i + 1].isalpha() or source[i + 1] == "_"):
            j = i + 1
            while j < n and (source[j].isalnum() or source[j] == "_" or source[j] == ":"): j += 1
            name = source[i + 1:j]
            if ":" in name or level < 2:
                out.append(source[i:j])
            else:
                if name not in symbols: symbols[name] = f"s{len(symbols) + 1}"
                out.append("#" + symbols[name])
            i = j
            continue
        out.append(c); i += 1
    text = "".join(out)
    return re.sub(r"\n[ \t]*\n[ \t]*\n+", "\n\n", text)

STOP_WORDS = set("""a an the and or of with for from to in on at by is are be been not no if then else do each all any new
old type types initialize initialized test tests value values name names size add adds added remove removes removed
includes include max min total count number numbers amount first last next previous get set should can cannot must
has have had when where which that this than more less most least invalid valid error errors message messages class
classes object objects method methods collection collections list lists empty create creates created delete update
run runs start starts end ends begin stop check checks result results current default other others same given per
into out up down true false nil self super print string strings symbol symbols integer index key keys item items
element elements one two three four five zero its it as also only some such very with without between over under
against before after again already make makes made take takes taken give gives given use uses used using ok yes
description condition conditions state states kind kinds instance instances variable variables assert equal equals
of ones another every both either neither because while until since through about above below off own too just
like also still what who whom whose how why here there now then always never sometimes must may might will would
refactoring refactor design model code exercise statement work war wars game games isw second third time place know
foo bar engine company team area famous
shall could seen see sees way ways thing things case cases part parts point points""".split())


def author_words(renames, title):
    """The words the author's names were made of, longest first: domain vocabulary to hide."""
    words = set()
    def split(name):
        for piece in re.split(r"[^A-Za-z]+", name):
            for w in re.findall(r"[A-Z]+(?=[A-Z][a-z])|[A-Z]?[a-z]+|[A-Z]+", piece):
                w = w.lower()
                if len(w) >= 3 and w not in STOP_WORDS: words.add(w)
    for name in renames["classes"]: split(name)
    for key in renames["selectors"]: split(key.split(">>", 1)[1])
    for key in renames["instanceVariables"]: split(key.split(".", 1)[1])
    for key in renames["temporaries"]: split(key.rsplit(" ", 1)[1])
    for name in renames["symbols"]: split(name)
    split(title)
    # an inflected form whose stem is also a word is covered by the stem's suffix pattern
    def stem_of(w):
        for suffix in ("ies", "ers", "ing", "es", "ed", "er", "s"):
            if w.endswith(suffix):
                base = w[:-len(suffix)] + ("y" if suffix == "ies" else "")
                for candidate in (base, base + "e"):
                    if (candidate in words or candidate in STOP_WORDS) and candidate != w: return candidate
        return None
    words = {w for w in words if stem_of(w) is None}
    return sorted(words, key=lambda w: (-len(w), w))


def hide_domain_words(spec, words, table):
    """Replace the domain words in the prose of the spec (outside code spans and fenced blocks) by
    code words, keeping capitalization pattern and simple plural or verb suffixes."""
    pattern = re.compile(r"(```.*?```|`[^`\n]*`)", re.S)
    suffix = r"(s|es|ed|ing|er|ers|ies)?"
    def code_for(word):
        if word not in table: table[word] = f"w{len(table) + 1}"
        return table[word]
    def replace_prose(text):
        for word in words:
            stem = word[:-1] if word.endswith("y") else word
            rx = re.compile(rf"(?<![A-Za-z])({re.escape(stem)})(y|ies|s|es|ed|ing|er|ers)?(?-i:(?![a-z]))", re.I) if word.endswith("y") else re.compile(rf"(?<![A-Za-z])({re.escape(word)}){suffix}(?-i:(?![a-z]))", re.I)
            def sub(m):
                code = code_for(word)
                if m.group(1).isupper() and len(m.group(1)) > 1: code = code.upper()
                elif m.group(1)[0].isupper(): code = code[0].upper() + code[1:]
                return code + (m.group(2) or "")
            text = rx.sub(sub, text)
        return text
    parts = pattern.split(spec)
    return "".join(part if pattern.fullmatch(part) else replace_prose(part) for part in parts)


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    level = int(sys.argv[sys.argv.index("--level") + 1]) if "--level" in sys.argv else 2
    exercise_dir, twin_name, twin_package = Path(args[0]).resolve(), args[1], args[2]
    exercise = json.load(open(exercise_dir / "exercise.json"))
    package = exercise["package"]
    starting = [exercise_dir / p for p in exercise["startingPackages"] if p]
    twin_dir = exercise_dir.parent / twin_name
    if twin_dir.exists(): shutil.rmtree(twin_dir)
    (twin_dir / "starting").mkdir(parents=True)

    image = Image()
    try:
        for path in starting:
            if path.suffix == ".st" and not path.name.endswith(".pck.st"):
                print("install:", image.evaluate(f"[ (FileEntry withAbsolutePathName: '{path}') readStreamDo: [ :aStream | aStream fileIn ]. 'OK' ] on: Error do: [ :anError | 'FAILED: ', anError description ]"))
            else:
                print("install:", image.evaluate(f"[ ((FeatureRequirement name: (CodePackageFile packageNameFrom: '{path}')) pathName: '{path}') satisfyRequirementsAndInstall. 'OK' ] on: Error, FeatureRequirementUnsatisfied do: [ :anError | 'FAILED: ', anError description ]"))
        classes = image.evaluate_json(f"((Smalltalk allClasses select: [ :aClass | (aClass category ifNil: [ '' ]) = '{package}' or: [ (aClass category ifNil: [ '' ]) beginsWith: '{package}-' ] ]) asSortedCollection: [ :a :b | (a inheritsFrom: b) not ]) collect: [ :aClass | aClass name ]")
        classes = sorted(classes, key=lambda n: (image.evaluate(f"(Smalltalk at: #{n}) allSuperclasses size") , n))
        print("classes:", classes)
        before = run_tests(image, package)
        print("tests before:", before)
        renames = {"classes": {}, "selectors": {}, "instanceVariables": {}, "temporaries": {}, "symbols": {}, "strings": {}, "level": level, "from": exercise["name"], "package": {package: twin_package}}
        class_set = set(classes)
        counter = {"m": 0, "test": 0, "v": 0, "C": 0}

        # selectors, both sides, one class at a time
        for name in classes:
            for side in ("", " class"):
                target = name + side
                selectors = image.evaluate_json(f"(Smalltalk at: #{name}){side} selectors asSortedCollection asArray")
                for selector in selectors:
                    if selector in KEEP_SELECTORS or not selector[0].isalpha(): continue
                    implementors_outside = image.evaluate_json(f"((Smalltalk allClasses select: [ :c | (c includesSelector: #{selector}) or: [ c class includesSelector: #{selector} ] ]) reject: [ :c | #({' '.join(classes)}) includes: c name ]) size")
                    inherited = image.evaluate(f"((Smalltalk at: #{name}){side} superclass canUnderstand: #{selector}) printString") == "true"
                    if inherited: continue  # an override of base protocol keeps its name
                    if selector.startswith("test") and side == "":
                        counter["test"] += 1; new = f"test{counter['test']:02d}"
                    else:
                        counter["m"] += 1; parts = selector.count(":")
                        new = f"m{counter['m']}" if parts == 0 else "".join(f"{'m' if i == 0 else chr(ord('a') + i - 1)}{counter['m']}:" for i in range(parts))
                    if f"{target}>>{selector}" in renames["selectors"]: continue
                    answer = image.call("smalltalk_refactor_rename_selector", {"className": target, "selector": selector, "newSelector": new, "scope": "category"})
                    if answer.startswith("ERROR") or "rror" in answer[:40]:
                        print(f"  keep {target}>>{selector}: {answer[:100]}"); counter["m"] -= 1; continue
                    if implementors_outside:
                        # a selector some base class also implements: the sends in the package were renamed too, which
                        # is right only if none of them reached a base object; the tests decide, and a failure reverts it
                        if run_tests(image, package) != before:
                            image.call("smalltalk_refactor_rename_selector", {"className": target, "selector": new, "newSelector": selector, "scope": "category"})
                            print(f"  keep {target}>>{selector}: renaming it breaks the tests (a base class implements it and the package sends it)"); counter["m"] -= 1; continue
                    renames["selectors"][f"{target}>>{selector}"] = new
        # instance variables
        for name in classes:
            for side in ("", " class"):
                variables = image.evaluate_json(f"(Smalltalk at: #{name}){side} instVarNames asArray")
                for variable in variables:
                    counter["v"] += 1; new = f"v{counter['v']}"
                    answer = image.call("smalltalk_refactor_rename_instance_variable", {"className": name + side, "variableName": variable, "newVariableName": new})
                    if answer.startswith("ERROR") or "rror" in answer[:40]:
                        print(f"  keep ivar {name}{side}.{variable}: {answer[:100]}"); counter["v"] -= 1; continue
                    renames["instanceVariables"][f"{name}{side}.{variable}"] = new
        # temporaries, arguments and block variables, per method
        for name in classes:
            for side in ("", " class"):
                selectors = image.evaluate_json(f"(Smalltalk at: #{name}){side} selectors asSortedCollection asArray")
                for selector in selectors:
                    names = image.evaluate_json(f"| node names | node := (Smalltalk at: #{name}){side} >> #{selector}. names := OrderedCollection new. node methodNode nodesDo: [ :n | ((n isMemberOf: MethodNode) or: [ n isMemberOf: BlockNode ]) ifTrue: [ names addAll: (n arguments collect: [ :a | a name ]). (n respondsTo: #temporaries) ifTrue: [ names addAll: (n temporaries collect: [ :t | t name ]) ] ] ]. names asArray")
                    seen = []
                    for i, variable in enumerate(n for n in names if n not in seen and not seen.append(n)):
                        new = f"t{i + 1}"
                        answer = image.call("smalltalk_refactor_rename_temporary", {"className": name + side, "selector": selector, "variableName": variable, "newVariableName": new})
                        if answer.startswith("ERROR") or "rror" in answer[:40]:
                            source = image.evaluate_json(f"(Smalltalk at: #{name}){side} sourceCodeAt: #{selector}")
                            rewritten = re.sub(rf"(?<![\w:#'])({re.escape(variable)})(?![\w:])", new, source)
                            if rewritten != source:
                                image.call("smalltalk_define_methods", {"methods": [{"className": name + side, "source": rewritten, "category": "x"}]})
                            else:
                                print(f"  keep temp {name}{side}>>{selector} {variable}: {answer[:80]}"); continue
                        renames["temporaries"][f"{name}{side}>>{selector} {variable}"] = new
        # classes
        for name in classes:
            counter["C"] += 1; new = f"C{counter['C']}"
            answer = image.call("smalltalk_refactor_rename_class", {"className": name, "newClassName": new})
            if answer.startswith("ERROR") or "rror" in answer[:40]:
                print(f"  keep class {name}: {answer[:100]}"); counter["C"] -= 1; continue
            renames["classes"][name] = new
        new_classes = [renames["classes"].get(n, n) for n in classes]
        # literals, comments, categories
        for name in new_classes:
            image.evaluate(f"(Smalltalk at: #{name}) comment: ''. (Smalltalk at: #{name}) category: '{twin_package}'. 'ok'")
            for side in ("", " class"):
                selectors = image.evaluate_json(f"(Smalltalk at: #{name}){side} selectors asSortedCollection asArray")
                for selector in selectors:
                    source = image.evaluate_json(f"(Smalltalk at: #{name}){side} sourceCodeAt: #{selector}")
                    rewritten = strip_comments_and_map_literals(source, renames["symbols"], renames["strings"], level)
                    answer = image.call("smalltalk_define_methods", {"methods": [{"className": name + side, "source": rewritten, "category": "x"}]})
                    if "rror" in answer[:60] and "defined" not in answer: print(f"  literal rewrite failed {name}{side}>>{selector}: {answer[:120]}")
        after = image.evaluate(f"| r | r := TestResult new. ((Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: '{twin_package}' ]) select: [ :c | c inheritsFrom: TestCase ]) do: [ :c | c buildSuite run: r ]. r runCount printString, ' run ', r passedCount printString, ' passed ', r failureCount printString, ' failed ', r errorCount printString, ' errors'")
        print("tests after:", after)
        out = twin_dir / "starting" / f"{twin_package}.pck.st"
        print("fileout:", image.evaluate(f"[ | p | p := CodePackage named: '{twin_package}' createIfAbsent: true registerIfNew: true. p fullFileName: '{out}'. p save. 'OK ', p methodCount printString, ' methods' ] on: Error do: [ :e | 'FAILED: ', e description ]"))
    finally:
        image.stop()

    # the twin's files
    json.dump(renames, open(twin_dir / "renames.json", "w"), indent=2)
    twin = dict(exercise); twin.update({"name": twin_name, "title": exercise["title"] + " (cryptic names)", "package": twin_package, "startingPackages": [f"starting/{twin_package}.pck.st"],
        "solutionPackages": [], "acceptanceTests": None, "acceptanceTestClasses": None, "crypticTwinOf": exercise["name"], "obfuscationLevel": level,
        "description": exercise.get("description", "") + f" Cryptic twin: every class, selector, variable, symbol and string the exercise's author named is replaced by a meaningless one (level {level}), comments removed; renames.json has the table."})
    twin.pop("maskedFrom", None)
    json.dump(twin, open(twin_dir / "exercise.json", "w"), indent=2)
    spec = (exercise_dir / "spec.md").read_text()
    for old, new in sorted(renames["classes"].items(), key=lambda kv: -len(kv[0])):
        spec = re.sub(rf"\b{re.escape(old)}\b", new, spec)
    for key, new in sorted(renames["selectors"].items(), key=lambda kv: -len(kv[0])):
        old = key.split(">>", 1)[1]
        # selectors quoted in backticks, in bold, or after Class>> ; a keyword selector is never a prose word
        spec = re.sub(rf"(?<=`)#?{re.escape(old)}(?=`)|(?<=\*\*)#?{re.escape(old)}(?=\*\*)|(?<=>>#){re.escape(old)}(?=[`*\s,.)])|(?<=>>){re.escape(old)}(?=[`*\s,.)])", new, spec)
    for old, new in sorted(renames["instanceVariables"].items(), key=lambda kv: -len(kv[0])):
        spec = re.sub(rf"(?<=`){re.escape(old.split('.', 1)[1])}(?=`)", new, spec)
    if level >= 2:
        # the symbol names are the domain's kinds; the statement names them as words, so the words go too
        for old, new in sorted(renames["symbols"].items(), key=lambda kv: -len(kv[0])):
            spec = re.sub(rf"#?\b{re.escape(old)}\b", new, spec)
        for old, new in sorted(renames["strings"].items(), key=lambda kv: -len(kv[0])):
            spec = spec.replace(f"'{old}'", f"'{new}'").replace(f'"{old}"', f'"{new}"')
    if level >= 3:
        renames["words"] = {}
        spec = hide_domain_words(spec, author_words(renames, exercise["title"]), renames["words"])
        json.dump(renames, open(twin_dir / "renames.json", "w"), indent=2)
        twin["title"] = hide_domain_words(exercise["title"], author_words(renames, exercise["title"]), renames["words"]) + " (cryptic names, hidden domain)"
        twin["description"] += " Level 3: the words of the author's names are also replaced in the statement, so the domain is hidden."
        json.dump(twin, open(twin_dir / "exercise.json", "w"), indent=2)
    (twin_dir / "spec.md").write_text(spec)
    (twin_dir / "source.md").write_text(f"# {twin_name}\n\nCryptic twin of `{exercise['name']}` made by `scripts/obfuscate-exercise.py` on {time.strftime('%Y-%m-%d')} (level {level}): the same starting code with meaningless names, no comments, coded literals. `renames.json` maps every original name to its replacement; the spec is the original with the names it quotes replaced the same way.\n")
    print(f"twin written to {twin_dir}: {len(renames['classes'])} classes, {len(renames['selectors'])} selectors, {len(renames['instanceVariables'])} instance variables, {len(renames['temporaries'])} temporaries, {len(renames['symbols'])} symbols, {len(renames['strings'])} strings renamed" + (f", {len(renames.get('words', {}))} domain words hidden in the statement" if level >= 3 else ""))


if __name__ == "__main__":
    main()
