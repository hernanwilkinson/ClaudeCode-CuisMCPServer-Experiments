# Experiment scripts

Automation for the Claude Code + Cuis MCP server study described in
[../research-design.md](../research-design.md). Scripts are numbered in the order they are used.

## 1. Scenario images

```bash
scripts/1-createScenarioImage.sh all            # or one or more scenario names
scripts/verify-scenario-image.sh all            # or one scenario name and an optional port
```

`scenarios.sh` is the single definition of the seven tool scenarios: the base each starts from,
the packages it loads, and the `MCPToolGroup` and `MCPToolDecorator` classes that survive in it.
The server serves every concrete tool group class present in the image and applies every concrete
decorator present, so a scenario is what is left after loading its packages and removing the
classes it must not offer. Removal goes leaf first: an abstract group whose subclasses are all
gone would otherwise count as concrete and break `tools/list`.

| Scenario | Base | Tools | Definition bytes |
|---|---|---|---|
| 1-Evaluate+TestRunning | Cuis 7.9, standard VM | 7 | 2,703 |
| 2-ModelStructure+Package | Cuis 7.9, standard VM | 33 | 14,270 |
| 3-Search | Cuis 7.9, standard VM | 41 | 18,348 |
| 4-Refactoring | Cuis 7.9, standard VM | 73 | 54,284 |
| 5-LiveTyping | CuisUniversity 7.9, LiveTyping VM | 80 | 62,394 |
| 6-LiveTypingRefactoring | CuisUniversity 7.9, LiveTyping VM | 80 | 67,864 |
| 7-Debug | CuisUniversity 7.9, LiveTyping VM | 87 | 69,938 |

| 1-Evaluate+TestRunning-University | CuisUniversity 7.9, LiveTyping VM | 7 | 2,703 |
| 4-Refactoring-University | CuisUniversity 7.9, LiveTyping VM | 73 | 54,284 |

The two `-University` scenarios (added 2026-09-14) are controls for the LiveTyping cells: the
University base and the LiveTyping VM with the same packages, but the LiveTyping tool group and
decorators removed, so a cell on them differs from a LiveTyping cell only in the type
information served. Every image was rebuilt on 2026-09-14 on core update 8182 (MCP server
1d61daa); the base glob now matches `CuisUniversity?.?-????.image` only, so a working copy such
as `CuisUniversity7.9-8182-MCPServer.image` in the clone's `CuisImage` is ignored.

Rebuilt 2026-09-15 on MCP server 9e990b0 (core update 8185), which adds `smalltalk_batch` to
MCPImageTools: several tool calls in one call, in order, one answer line per step. The
evaluate-only scenarios (`1-*`) are built without it (`scenario_batch_tool` in `scenarios.sh`;
the image script recompiles the group's tool list), so they stay "evaluate and the test tools";
every other scenario offers it, and configuration `9-BatchFirst` tells the agent to use it over
calling tools one at a time or evaluating.

Counts as of the 2026-09-11 rebuild (MCP server f781c04, core update 8166). That server replaced
`smalltalk_define_method` with `smalltalk_define_methods`, which takes a list of methods, added
`smalltalk_class_source` (whole classes in one call), and made `smalltalk_method_source`,
`smalltalk_delete_method` and `smalltalk_delete_class` take several items per call.
`analysis-merge.py` understands both the old and the new argument shapes and reports
`defineCalls`, `methodsDefined` and `methodsPerDefineCall` per run.

Scenarios 5 and 6 serve the same tool names; they differ in the nine actual-scope decorators,
which change what the refactoring tools accept. Both bases end at the same core update, because the
plain base is updated with `-u` while building.

The plain base gets Aconcagua, Chalten, CodeCoverage and Tools-Finder on top of the MCP
packages. The University base already has them, plus LiveTyping and the rest of the University
image; Tools-Finder is required explicitly on both so every scenario has it. After the packages
are loaded, the build installs the Aconcagua and Chalten units as globals
(`UnitsTestResource installUnitsAsGlobals`, `TimeUnits installUnitsAsGlobals`, what the
CuisUniversity package does on install), so `meter`, `hour`, `day`, `month` and the rest
resolve in every scenario image (added 2026-09-11; only scenario 1 rebuilt so far).

`1-createScenarioImage.sh` copies the base image and changes into the Cuis-Smalltalk-Dev clone's
`CuisImage` directory under the scenario name (Cuis finds package repositories relative to the
image), evaluates `scenario-image.st` through `-s`, and moves the saved image into
`scenarios/<scenario>/` with the sources file, `expected-tools.json` (written from inside the
image) and `manifest.json` (base, VM, features, classes kept, git commits of the clone and of the
MCP server repository, build time, image hash). The base files are never modified.

`verify-scenario-image.sh` starts the image with `--mcpHttpPort=<port>` and a random bearer
token, asks `tools/list` over HTTP as Claude Code would, asks the image through
`smalltalk_evaluate` which decorators it holds and which update it is at, compares both with
`expected-tools.json`, and writes `served-tools.json`. The definition byte count there is the
tool schema overhead each request to the model carries.

Environment overrides: `CUIS_DEV` (the Cuis-Smalltalk-Dev clone, default the one in
`Cuis-University-Installer`), `SCENARIOS_DIR` (output root, default `../scenarios`).

## 2. Running one cell

```bash
scripts/2-runCell.sh --experiment 003-SomeIdea --scenario 4-Refactoring \
    --config 4-Refactoring,7-DesignHeuristics --technique tdd --exercise exercises/smoke \
    [--model claude-fable-5-1] [--effort high] [--budget 20] [--timeout 3600] [--note "..."]
```

A cell is one scenario, one Claude Code configuration, one technique and one exercise. Each
invocation is one run. Every run belongs to an **experiment**, one hypothesis or idea being
tried, named `NNN-Description` (see [../experiments/README.md](../experiments/README.md)),
and is written to
`experiments/<experiment>/cells/<scenario>_<config>_<technique>/<exercise>/<YYYYmmdd-HHMMSS-pid>/`.
`--experiment` is required; the directory is created if needed, and its `README.md` is yours
to write for hand-made experiments (`5-runMatrix.sh` writes one).

**Configurations** are directories under `scripts/configs/`, each with a `CLAUDE.md` clause and
an optional `skills.txt` naming skill directories to install as project skills. `--config`
takes one or more, comma separated; their clauses are concatenated in that order into the
working directory's `CLAUDE.md`. `1-Empty` adds nothing. `7-DesignHeuristics` mandates the
three skills the way the global `CLAUDE.md` does; `8-DesignHeuristicsInline` puts the
heuristics file itself into `CLAUDE.md` through an `@include` line, so skill versus always-on
text can be compared. Edit the clause texts freely; every run hashes what it used.

**Techniques** are files under `scripts/techniques/` (`free`, `tdd`, `test-after`), appended
to the prompt after the specification. `free` is empty.

**Exercises** are directories with `spec.md` (the task, identical across conditions) and
`exercise.json` (`name`, `kind`, `package`, `startingPackages`, `acceptanceTests`). Starting
code is loaded into the image before Claude Code starts: a `.pck.st` is installed as a
package, a plain `.st` (the class fileOuts the exams give) is filed in. The prompt ends with a
fixed paragraph naming the system categories to work in, so the harness can file the package
out. The 57 course exams live in `exercises/`, imported with `import-brief.md` (one agent per
semester); `exercises/README.md` has the inventory, the recommendations per scenario and the
caveats, and `exercises-table.py` regenerates the inventory from the `exercise.json` files.

**What a run does.** It copies the scenario image, starts it with the server on a free port and
a random token, snapshots `tools/list`, installs starting packages, runs the given tests once
(the warm-up: LiveTyping only knows the types of code that has run, so every scenario runs the
test classes whose category starts with the exercise's package before the session, and the
result goes to `warm-up.txt` and the manifest's `warmUp`), runs Claude Code headless,
then saves the image through `smalltalk_save_image`, files the package out through
`smalltalk_evaluate`, stops the VM, copies Claude Code's transcript and summarizes usage.

**Isolation.** Claude Code runs with `--setting-sources project`, which leaves out the user
settings, the user `CLAUDE.md` and the user skills; `--tools ""` so it has no file, shell, web
or subagent tools (`--tools Skill` when the configuration installs skills); `--strict-mcp-config`
so the scenario image is its only server; and `--disable-slash-commands` when no skills are
installed. The image files live outside the working directory. Login is the one in
`~/.claude`; a separate `CLAUDE_CONFIG_DIR` is not used because the login is bound to it.
Runs can go in parallel: each has its own port and directory.

The neutral working directory is under `/private/tmp/claude-cells/` (override with
`WORKDIRS_DIR`, never with a path under `$HOME`). Since Claude Code 2.1.267 a session whose
working directory is anywhere under `$HOME` receives `~/.claude/CLAUDE.md` as *project*
memory, which `--setting-sources project` keeps; 2.1.212 did not do this. The 2026-09-10
matrix (experiment 002) ran under the project directory with 2.1.268 and was contaminated by
it: the agents read the heuristics file the global instructions name. Outside `$HOME` nothing
is injected (checked 2026-09-11 with `grep 'Contents of' <run>/claude-transcript.jsonl`, which
is the check to repeat after every Claude Code update). User skills are not listed in either
case; Claude Code's built-in skills are.

**Outputs per run.** `manifest.json` (parameters, versions, hashes of prompt, `CLAUDE.md`,
spec and skills, tool count and definition bytes, timings, exit status, cost, turns),
`prompt.md`, `workdir/` (`CLAUDE.md`, `.mcp.json`, `.claude/skills`), `image/` (saved after the
run, with `scenario-manifest.json`), `output/<Package>.pck.st`, `output/LooseChanges.st` and
`loose-changes.json` (methods the agent changed outside the package, extracted from the saved
image by `extract-loose-changes.sh`; the analysis loads them on top of the package and counts
them, since a package that needs them does not work on its own), `claude-stream.jsonl` (every
event: tool calls with arguments, results, usage), `claude-transcript.jsonl`, `usage.json` (from
`session-tokens.py`), `tools-list.json`, `vm.log`, and `mcp-calls.jsonl`.

**The server's call log.** The image is started with `--mcpLogCalls=<run>/mcp-calls.jsonl`, so
the server itself records every tool call as one JSON line: `session`, `sequence`, `at`, `tool`,
`arguments`, `milliseconds`, `isError`, and `answer` (the full text answered) or `error`. It is
the ground truth for what the agent did in the image, with latencies and answer sizes the
transcript cannot give. The harness's own calls are in it too (installing starting code before
the session, saving the image and filing the package out after), so `manifest.json` has
`mcpCallsLog.agentCallsFromLine` and `agentCallsToLine`: the agent's calls are those lines,
inclusive. Step 3 reads this file rather than the transcript for tool sequences.

**Cost guards.** `--max-budget-usd` stops the session at the budget; `--timeout` kills it. Both
are recorded as the run status (`completed`, `failed`, `timeout`, `no-result`).

Smoke tests on 2026-09-09 with Haiku: scenario 1 with `1-Empty`/`free` took 24 turns and
$0.08; scenario 3 with `7-DesignHeuristics`/`tdd` took 44 turns and $0.19 and invoked the
three skills before writing code.

**Interactive mode.** `--interactive` prepares the same cell and opens Claude Code in your
terminal with the prompt already entered, so you can watch it and talk to it; exiting it
collects the run like a headless one (no stream file; transcript, usage and call log are all
there, and `manifest.json` says `"mode": "interactive"`). Run it from a real terminal.
Claude Code loads `~/.claude/CLAUDE.md` and `~/.claude/skills` in an interactive session even
with `--setting-sources project` (verified from the transcripts; a headless session does not),
so the runner renames both to `*.paused-by-run-<id>` while the session lasts and restores them
when it ends, however it ends. Other Claude Code sessions started in that window miss them.

**Skills that point at files.** A skill copied into a cell has every absolute `.md` path it
names inlined at its end, because the agent has no file tools; the heuristics skill's "re-read
the canonical file" therefore works without a Read tool.

## 2a. Running one cell with Codex instead of Claude Code

```bash
scripts/2-runCell.sh --experiment 019-CodexSmoke --agent codex \
  --scenario 1-Evaluate+TestRunning --config 1-Empty --technique free \
  --exercise exercises/smoke --model gpt-6-astra --effort low
```

`--agent codex` runs the same cell through `codex exec`: the guidance goes to `AGENTS.md`, the
server is passed as `-c mcp_servers.Cuis.*` (streamable HTTP with the same per-run bearer token),
the session's rollout is copied to `codex-rollout.jsonl` and `codex-session-tokens.py` writes the
same `usage.json` every other run has. `--ignore-user-config` keeps the user's `config.toml`,
plugins and marketplaces out; authentication still comes from `CODEX_HOME`, so no credential is
copied into the run. Configurations that install skills are refused, since Codex has no
equivalent: use `8-DesignHeuristicsInline`.

Two differences to keep in mind. Codex always has a shell, so a scenario cannot take its tools
away the way `--tools ""` does for Claude Code; the sandbox is set to `read-only` in an empty
working directory, which is the closest approximation. And there is no budget cap, so the
timeout is the only limit. See [experiments/019-CodexSmoke](../experiments/019-CodexSmoke/README.md)
for what had to be discovered to make it run and for what the measures do and do not compare.

## 2b. Running one cell in Java (the language comparison)

```bash
scripts/2-runJavaCell.sh --experiment 006-SmalltalkVsJava --exercise exercises/2024-1c-parcial1 \
    [--config 1-Empty] [--technique free] [--model M] [--effort E] [--budget 15] [--timeout 1800] \
    [--tools "Read,Edit,Write,Bash,Glob,Grep"]
```

The counterpart of `2-runCell.sh` for the same exercise in Java: Claude Code with its ordinary
file and shell tools on a Gradle + JUnit 5 project, no MCP server. The exercise needs a `java/`
directory holding the project (`settings.gradle.kts`, `build.gradle.kts`, `gradle.properties`
from `java-template/`, `src/main/java/<package>`, `src/test/java/<package>`), a faithful
translation of the Smalltalk starting code and tests with the same design and the same smells;
`spec-java.md`, when present, is the spec with Smalltalk syntax in its examples turned into Java
and is used instead of `spec.md`. Gradle is the one under `tools/gradle` (downloaded on
2026-09-15, 9.7.1, the release that runs on the JDK 25 installed here; JUnit 5.11 is cached in
`~/.gradle`), put on the session's PATH; the prompt ends with a paragraph naming the project,
the package and `gradle test`, the counterpart of the Cuis paragraph naming the categories.

The given tests run once before the session (warm-up, which also compiles), and after it twice
in copies of the project: the original tests against the final code (acceptance) and the project
as the agent left it (its own tests); results are parsed from the JUnit XML. Isolation as in the
Cuis runner: `--setting-sources project`, working directory outside `$HOME`,
`--strict-mcp-config` with an empty server list so none of the user's MCP servers is reachable,
only the tools named, `--disable-slash-commands`. `analyze-java-run.py` writes `analysis.json`
in the shape of the Cuis analysis where it applies (tokens, cost, requests, tool calls by tool,
test runs counted as `gradle test` commands, files read and edited, acceptance, own tests,
simple source measures: classes, methods, lines, ifs, switches, instanceof, null checks, and
the diff against the given code); mentor, coverage and test smells are `None`. In
`5-runMatrix.sh` a cell whose scenario is `java-gradle` goes through this runner, so a matrix
can hold Cuis and Java cells side by side.

## 2d. Running one cell in Cuis without the MCP server (scripts through -s)

```bash
scripts/2-runScriptCell.sh --experiment 009-Foo --exercise exercises/2024-1c-parcial1 \
    [--scenario 1-Evaluate+TestRunning-University] [--config 1-Empty] [--technique free] [--model M] ...
```

The environment comparison's third cell: Claude Code with its file and shell tools, a Cuis image
and no server. The agent writes Smalltalk scripts and runs each one with `./cuis.sh <file.st>`
in its working directory, which starts the VM headless on the run's image with `-s
cuis-script-wrapper.st` and the script as argument. The wrapper evaluates the script as the
evaluate tool would (`Compiler evaluate:`), prints the value's printString, and on a failure
prints `ERROR: <class>: <description>` and quits with status 1 without saving, so a failed script
leaves the image untouched; a script that ends normally saves the image, so definitions persist.
It handles `UnhandledError` and `SyntaxErrorNotification`, not `Error`: SUnit records a test's
error by catching `UnhandledError` itself, and an `Error` handler in the wrapper would take it
first and abort the whole test run (the MCP server's test tools run suites in a process of their
own for the same reason). Classes and methods are defined with `subclass:` and `compile:`, no
file-out format. `run-tests.st`, provided in the working directory, runs the package's test
classes and prints counts and failures; every script run is logged to `<run>/scripts.log`
(time, file, status, output size). The starting code is installed and the warm-up run through the
same wrapper; the package is filed out the same way at the end and the loose changes extracted.
Without a server log, `analysis-merge.py` takes the agent's calls from the Claude Code stream and
the script runs from `scripts.log` (`scriptRuns`, `failedScriptRuns`, test runs = runs of
`run-tests.st`); the hand-made-refactoring detector has nothing to read there. In `5-runMatrix.sh`
a cell whose scenario is `cuis-script` goes through this runner; the image is the University-based
evaluate-only one unless `--scenario` says otherwise.

## 2c. Cryptic twins of an exercise

```bash
scripts/obfuscate-exercise.py exercises/2021-1c-parcial1 2021-1c-parcial1-cryptic Task1 --level 2
```

Builds `exercises/<twin>/` from a refactoring exercise: its starting code filed into the
analysis image, every class, selector, instance variable and temporary renamed to a meaningless
name with the refactoring tools (so senders and tests follow), comments removed, symbol and
string literals replaced by codes at level 2, the classes moved to the twin's package, the
tests run before and after, and the package filed out as `starting/<package>.pck.st`. Overrides
of base protocol keep their names; a selector a base class also implements is renamed only if
the tests still pass afterwards. `renames.json` holds the table, `spec.md` is the original with
the quoted names and symbol words replaced, `exercise.json` records `crypticTwinOf`. The
analysis of a twin's run adds `names`: how many cryptic names are left in the delivered code and
how many original names came back, per kind.

`--level 3` also hides the domain in the statement: the words the author's names were made of
are replaced in `spec.md` by `w1`, `w2`, ... (inflections included, code spans untouched) and in
the title; `renames.json` gets a `words` table. Level 2 leaves the prose readable, level 3 leaves
only the words the code never named.

## 3. Analyzing one run

```bash
scripts/3-analyzeRun.sh experiments/<experiment>/cells/<cell>/<exercise>/<id> [--llm-review [N]] [--keep-image]
```

Files the run's package (`output/<Package>.pck.st`) into a fresh copy of the analysis image
(`scenarios/analysis`: University base, every tool, TestLint, SmalltalkMentor; build it with
`1-createScenarioImage.sh analysis`), loads the acceptance tests, and writes
`<run>/analysis.json` with:

- **tests**: acceptance tests (the exercise's `acceptanceTests` file or `acceptanceTestClasses`,
  else the test classes the starting code gave) and the agent's own tests, with failures named.
- **coverage** of the model classes by all tests and by the agent's tests (CodeCoverage).
- **test smells** (TestLint) and **SmalltalkMentor findings**: every mechanical heuristic of
  SmalltalkMentor over every method and class, counted by heuristic; with `--llm-review` also
  the mentor's LLM review of each method (provider and keys from `~/.smalltalk-mentor/`).
- **design metrics** from the parse trees (`analysis.st`): sends per method, conditionals, nil
  and type checks, identity comparisons, assertion idioms, comments, sizes, inheritance depth;
  plus regex checks on sources (initialize methods and creation funnels per class, setters,
  getters, parameter name prefixes, nil references).
- **diff** against the starting code: classes and methods added, changed, removed.
- **agent**: model, effort, elapsed time, turns, cost, tokens by kind, tool calls per minute,
  test runs and when the first one happened, refactoring tool calls, what `smalltalk_evaluate`
  was used for; and the process signals: calls and exploration calls before the first change,
  LiveTyping tool calls, actual-scope refactoring calls, answers carrying a
  MessageNotUnderstood, failed test runs.
- **refactoringOpportunities**: edits done with define and delete calls that a refactoring tool
  would have done (rename, extract, move, inline, signature change, rename class or instance
  variable), each with the call sequence numbers to check in `mcp-calls.jsonl`, whether the tool
  was available in that scenario, and how many methods were redefined. Heuristics, meant to be
  refined as runs accumulate.

`analysis-merge.py` assembles the JSON from the image's answer (`analysis/in-image.json`) and
the run files; it prints a one-screen summary.

## 5. Running a matrix as an experiment

```bash
scripts/5-runMatrix.sh --experiment 002-LessTokensWithModelStructureTools \
    --hypothesis "Claude Code uses fewer tokens with the model-structure tools than with evaluate alone" \
    --cells "1-Evaluate+TestRunning:1-Empty,2-ModelStructure+Package:2-EvaluateAsLastResource" \
    --exercises "exercises/2019-2c-parcial1,exercises/2022-1c-parcial1" \
    --repetitions 3 --model claude-opus-5 --effort high [--parallel 2] [--budget 15] [--timeout 1800]
```

A cell is `<scenario>:<config>` or `<scenario>:<config>:<technique>` (several configs joined
with `+`; a technique named in the cell overrides `--technique`, so the technique can be a
factor). The plan interleaves
repetition, exercise and cell so no cell runs in a block; `--parallel` runs that many at once.
Each run is analyzed as it finishes. `experiments/<experiment>/` holds `README.md` (written
once from `--hypothesis` and the parameters; add the results and the conclusion to it),
`plan.txt`, `parameters.json`, one log per run, the runs under `cells/`, `runs.txt`,
`results.json` and `table.md`. `matrix-table.py experiments/<experiment>` rebuilds the last two
from whatever is under `cells/` at any time. Medians are taken over the runs that passed the
acceptance tests; every run is also listed individually. Rerunning with the same experiment
name adds runs to it.

Runs and matrices made before 2026-09-11 were moved from `runs/` and `matrices/` into
`experiments/000-PipelineChecks`, `002-LessTokensWithModelStructureTools` and
`001-InteractiveRefactoringSession`; the path pointers in their `parameters.json`, `runs.txt`,
`results.json`, `job.sh`, logs and rendered `analysis.st` were rewritten, the transcripts and
call logs (`*.jsonl`) were left as recorded, so they still name the old `runs/` paths.

Known limits:

- The MCP server of 2026-09-11 (f781c04) writes the arguments of `smalltalk_define_methods`
  over several lines in `--mcpLogCalls` output: a raw newline between the items of the array,
  so the file is not strictly one JSON record per line. `analysis-merge.py` and `--finish` read
  a record by accumulating lines until they parse, and the agent's records are selected by the
  line they start on; `manifest.json`'s `mcpCallsLog.agentCalls` (a line count) overcounts for
  such runs, `analysis.json`'s `toolCalls.agentCalls` is right.
- Until 2026-09-11 the runner's timeout watchdog left its `sleep` alive after the session; the
  sleep held the runner's stdout open, so `job.sh`, which captures that output, waited the whole
  `--timeout` before analyzing. Runs and their measures were unaffected, but a matrix took
  `--timeout` per run per lane (yesterday's 12 runs took 2.5 hours for 1.2 hours of sessions).

- When skills are installed, Claude Code's built-in skills (code-review, simplify, ...) are
  listed too; `--disable-slash-commands` would remove them along with ours. Configuration 8 is
  the clean alternative for the heuristics.
- The transcript is found under `~/.claude/projects` by session id and copied; the original
  stays there.
- Builds run one at a time; they share `CuisImage/expected-tools.json` while running.
- A build error inside the image is reported and the VM quits with status 1. An error raised
  outside the build block, for instance while `-u` installs updates, opens a debugger and hangs
  the build.
- `smalltalk_evaluate` is in every scenario and reaches the whole image, including the
  refactoring engine and, on the University base, LiveTyping. The scenarios control which tools
  are offered, not what reflection can reach. The runner's server-side log records every
  evaluated expression so this can be measured.
