# Claude Code in a live Cuis Smalltalk image

What does a coding agent produce when it works inside a live Smalltalk image through an MCP
server, and what does it cost? This repository holds the harness that answers that question,
the exercises it answers it on, and every run of every experiment: 356 sessions of Claude Code
between 2026-09-09 and 2026-09-17, each one with its prompt, its transcript, the server's call
log, the package the agent produced and an analysis of it.

The MCP server under study is [Cuis-MCPServer](https://github.com/hernanwilkinson/Cuis-MCPServer):
it runs inside the image and offers the agent tools to evaluate expressions, define classes and
methods, read the model, search, refactor, run tests, debug, and read the runtime type
information LiveTyping collects. The question is which of those tools help, by how much, and at
what price in tokens.

`ClaudeCode-Cuis-Experiments.pptx` presents the study and its conclusions.

## What was found

Every tool call is an API request, and every request re-sends the whole conversation, so cost
follows the number of exchanges and the size of the context, not the amount of code written.
That one mechanism explains most of the results.

| Question | Experiment | Answer |
|---|---|---|
| Do the model-structure tools beat `smalltalk_evaluate`? | [012](experiments/012-ToolsVersusGuidance), [013](experiments/013-BatchToolFiveRuns) | Only with the batch tool, and only on greenfield work. On a small refactoring they cost 9 to 66 percent more input-side tokens; on a greenfield exercise they save 13 to 30 percent. Output tokens rise 15 to 32 percent either way |
| Do the refactoring tools pay for themselves? | [013](experiments/013-BatchToolFiveRuns), [015](experiments/015-RefactoringFirstWithBatch) | No. Unused they still cost 2.3x the input side, because their 69 KB schema rides on every request. Told to use them the agent does (3 to 33 calls per run) at 3 to 4 times the price of evaluate, with no measurable design gain |
| Is LiveTyping's type information cheaper? | [014](experiments/014-LiveTypingFiveRuns) | No, in all six comparisons: 1.3 to 2.0 times the input side. The type tools were called three times in thirty runs |
| Does batching the granular tools close the gap? | [013](experiments/013-BatchToolFiveRuns) | For the model-structure tools, yes: parity with evaluate (+7 and +9 percent) with 17 to 25 percent fewer requests. The agent batches without being told |
| Is Smalltalk cheaper than Java? | [016](experiments/016-LanguageComparisonRepeated) | A draw. Cuis through the server, Java through files and Cuis through shell scripts cost the same input-side tokens; scripts write 7 to 19 percent more output and take 13 to 32 percent longer |
| Do cryptic names make refactoring dearer or worse? | [017](experiments/017-CrypticNamesHiddenDomain), [018](experiments/018-CrypticNamesNoRenames) | Only on the smallest exercise, 20 to 35 percent. Hiding the domain in the statement and forbidding renames changed neither the cost nor the design |
| Does prescribed TDD give a better design? | [004](experiments/004-RefactoringToolsAndTDD) | Not by these measures, and it costs 8 to 26 times the input side of test-after, because one failing test at a time means one test-run request per test. One run per cell: the weakest evidence here |
| How much do identical runs vary? | [010](experiments/010-VariancePilot) | Within a day, 1.7x on the input side and 7 percent on output. Between days, 3 to 5x. Same-day controls matter more than repetitions |

[experiments/README.md](experiments/README.md) indexes all nineteen experiments with their
questions, dates and outcomes. Experiments 002, 003, 005, 006, 007, 008 and 009 are earlier
answers to questions that 011 to 018 answer again with same-day controls and more runs; they are
kept because they show how the results moved.

## The setup

Four layers, each one a factor that can be varied:

| Layer | What it is | How it varies |
|---|---|---|
| Agent harness | Claude Code, headless, one model per experiment | Fixed inside an experiment (Opus 5 at high effort in every matrix) |
| Tool set | What the MCP server serves from the image | **Scenarios**: which tool groups and decorators survive in the image |
| Guidance | The cell's `CLAUDE.md`, and skills when a configuration brings them | **Configurations**: empty, evaluate as a last resort, tools first, LiveTyping, design heuristics, batch first, no renames |
| Technique | A paragraph appended to the prompt | free, TDD, test-after |

A **cell** is `scenario : configuration [: technique]`. An **experiment** is one hypothesis: a
matrix of cells across exercises, repeated N times. A **run** is one Claude Code session on one
exercise in one cell.

**Scenarios** (`scenarios/*/manifest.json` records the base image, features, tool groups,
decorators and commit of each):

| Scenario | Tools served | Schema per request |
|---|---|---|
| 1-Evaluate+TestRunning | evaluate, define, delete, save, run tests | 3 KB |
| 2-ModelStructure+Package | 1 plus sources, hierarchy, senders, implementors, references, packages | 20 KB |
| 3-Search | 2 plus selector and source search, messages by example | |
| 4-Refactoring | 3 plus rename, extract, inline, move, push up and down | 54 to 69 KB |
| 5-LiveTyping | 4 plus runtime types and actual senders and implementors | 62 KB |
| 6-LiveTypingRefactoring | 5 plus refactorings in the actual scope | 68 KB |
| 7-Debug | 5 plus the debugger | |
| java-gradle | no MCP server: a Gradle and JUnit 5 translation edited with file and shell tools | |
| cuis-script | no MCP server: the same image driven by scripts through the VM's `-s` option | |

The `-University` variants of scenarios 1 and 4 run on the CuisUniversity base without the
LiveTyping tools, as controls for the LiveTyping cells.

**Exercises** (`exercises/`, 94 of them) are exam and course statements rewritten as specs, with
their starting code, their given tests and a description of the design traps each one holds.
Three have cryptic twins at two levels of obfuscation, three have Java translations carrying the
same classes, methods, tests and smells.

## Running it

[scripts/README.md](scripts/README.md) documents every step. In short:

```bash
scripts/1-createScenarioImage.sh 4-Refactoring
scripts/5-runMatrix.sh --experiment 019-MyHypothesis \
  --hypothesis "..." \
  --cells "1-Evaluate+TestRunning:1-Empty:free,4-Refactoring:9-BatchFirst:free" \
  --exercises "exercises/2019-2c-parcial1,exercises/2025-2c-parcial2" \
  --repetitions 5 --model claude-opus-5 --effort high --parallel 2
```

The matrix runner builds a fresh working directory and a fresh copy of the scenario image per
run, starts the server on a random port behind a per-run token, files in the starting code, runs
the given tests once as a warm-up, runs the session, then collects everything and analyzes it.
The analysis loads the produced package into a separate image and measures acceptance, the
agent's own tests, coverage, test smells, design metrics from the parse trees and the heuristics
findings of SmalltalkMentor, and summarizes the process from the server's call log.

Claude Code is invoked headless with `--setting-sources project`, an empty `--tools` list so the
image is the only workplace, `--strict-mcp-config` pointing at that run's server, and a budget
and timeout per run. The working directory sits outside `$HOME`, because from version 2.1.267 on
Claude Code injects the user's global `CLAUDE.md` into any session under it, which contaminated
experiment 002.

## Layout

```
exercises/<name>/            spec.md, exercise.json, starting code, given tests
scenarios/<name>/            manifest of the image built for that tool set
scripts/                     the harness: build, run, analyze, tabulate
experiments/<NNN-Name>/
  README.md                  hypothesis, design, results, conclusion, caveats
  table.md, results.json     every measure per cell, rebuilt by scripts/matrix-table.py
  cells/<cell>/<exercise>/<run-id>/
      prompt.md              the exact prompt the agent was given
      CLAUDE.md              the guidance in force
      claude-stream.jsonl    every message and usage record of the session
      claude-transcript.jsonl
      mcp-calls.jsonl        every tool call the server served, with its answer
      output/<Package>.pck.st  the code the agent produced
      analysis.json          tests, coverage, design metrics, process summary
      manifest.json          versions, hashes, status, elapsed time, tokens
```

Not in the repository, by choice: the saved images, sources and change files of every run and
scenario, which the scripts rebuild; the original statements the specs were written from; and
each run's `.mcp.json`, which carried that session's bearer token.

## Caveats

- **The day dominates.** The same cell on the same exercise cost 3 to 5 times more on some days
  than others, with everything else fixed. Only same-day comparisons mean anything, and the
  experiments before 010 that compare across days are marked where that matters.
- **Repetitions.** Three to ten runs per cell in the current experiments, one in several of the
  earlier ones. Five same-day runs resolve a difference of about 25 percent on the input side
  and 10 percent on output.
- **Design measures are mechanical.** Conditionals from the parse tree, heuristics findings from
  SmalltalkMentor, coverage and test smells. None of them judges whether a human would rather
  maintain the result, and there is no Smalltalk-to-Java equivalent, so the language comparison
  covers cost and correctness only.
- **One model.** Everything of consequence ran on Opus 5 at high effort.
