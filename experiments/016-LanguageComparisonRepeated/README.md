# 016-LanguageComparisonRepeated

## Hypothesis

Experiments 006 and 009 with five same-day runs per cell: the same task costs the same tokens in Cuis through the MCP server (1-Evaluate+TestRunning-University, evaluate and the test tools), in Java (Gradle + JUnit 5 translation, Claude Code's Read, Edit, Write, Bash, Glob and Grep, no MCP) and in Cuis through scripts run with the VM's -s option (cuis-script, the same file and shell tools, cuis-script-wrapper.st). The one-run comparison of 009 gave Java against MCP +35, -7 and -16 percent in cost and the scripts +15 to +62 percent; 010 measured a within-day CV of 18 percent on the input side, so five runs per cell resolve about 25 percent. No guidance, free technique, Opus 5 high, CustomerImporter (2022-1c-recuperatorio-parcial1), Seabed crawler (2019-2c-parcial2-masked), Sims Hotels (2024-1c-parcial1), 5 runs per cell, two in parallel, interleaved, one day. Compared: output tokens, uncached input, input-side tokens, requests, calls, test runs, wall time, acceptance by the given tests.

## Design

Started 2026-09-17. Model `claude-opus-5`, effort high, technique `free`,
5 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `1-Evaluate+TestRunning-University:1-Empty:free`
- `java-gradle:1-Empty:free`
- `cuis-script:1-Empty:free`

Exercises:
- `exercises/2022-1c-recuperatorio-parcial1`
- `exercises/2019-2c-parcial2-masked`
- `exercises/2024-1c-parcial1`

## Results

Forty-five runs between 05:21 and 06:30 on 2026-09-17, all completed and all passing the given
tests (on the Seabed crawler the agents add their tests to the given class; the given 16 pass in
every run). Medians of the five runs per cell; [table.md](table.md) has every measure. The Cuis
cells share the University image; the Java cell is the Gradle + JUnit translation.

| Exercise | Cell | Input-side | Uncached input | Cache read | Output | Thinking | Requests | Input per request | Calls | Tool errors | Seconds |
|---|---|---|---|---|---|---|---|---|---|---|---|
| CustomerImporter | Cuis MCP | 192 k | 27 k | 164 k | 11 k | 3 k | 8 | 23 k | 9 | 1 | 104 |
| CustomerImporter | Java | 183 k | 32 k | 151 k | 11 k | 4 k | 7 | 26 k | 6 | 0 | 94 |
| CustomerImporter | Cuis scripts | 190 k | 31 k | 158 k | 11 k | 4 k | 8 | 22 k | 7 | 1 | 118 |
| Seabed crawler | Cuis MCP | 189 k | 31 k | 154 k | 22 k | 8 k | 9 | 20 k | 10 | 0 | 194 |
| Seabed crawler | Java | 183 k | 32 k | 152 k | 20 k | 6 k | 8 | 24 k | 7 | 0 | 167 |
| Seabed crawler | Cuis scripts | 230 k | 38 k | 193 k | 26 k | 10 k | 9 | 26 k | 8 | 0 | 256 |
| Sims Hotels | Cuis MCP | 319 k | 38 k | 286 k | 19 k | 7 k | 11 | 30 k | 13 | 0 | 154 |
| Sims Hotels | Java | 249 k | 38 k | 214 k | 16 k | 4 k | 9 | 30 k | 8 | 0 | 131 |
| Sims Hotels | Cuis scripts | 254 k | 45 k | 210 k | 23 k | 8 k | 9 | 31 k | 9 | 0 | 202 |

Against Cuis through the MCP server (medians):

| Exercise | Comparison | Input-side | Uncached input | Output | Requests | Calls | Seconds |
|---|---|---|---|---|---|---|---|
| CustomerImporter | Java vs Cuis MCP | -5% | +19% | +2% | -12% | -33% | -10% |
| CustomerImporter | Cuis scripts vs Cuis MCP | -1% | +16% | +7% | +0% | -22% | +13% |
| Seabed crawler | Java vs Cuis MCP | -3% | +3% | -7% | -11% | -30% | -14% |
| Seabed crawler | Cuis scripts vs Cuis MCP | +22% | +20% | +17% | +0% | -20% | +32% |
| Sims Hotels | Java vs Cuis MCP | -22% | +1% | -15% | -18% | -38% | -15% |
| Sims Hotels | Cuis scripts vs Cuis MCP | -20% | +19% | +19% | -18% | -31% | +31% |

Spread inside each cell (five runs):

| Exercise | Cell | Input-side min / median / max | CV % | Output min / max | CV % |
|---|---|---|---|---|---|
| CustomerImporter | Cuis MCP | 110 / 192 / 217 k | 29 | 8 / 13 k | 15 |
| CustomerImporter | Java | 151 / 183 / 220 k | 16 | 10 / 13 k | 10 |
| CustomerImporter | Cuis scripts | 153 / 190 / 198 k | 13 | 9 / 13 k | 12 |
| Seabed crawler | Cuis MCP | 152 / 189 / 223 k | 14 | 20 / 27 k | 14 |
| Seabed crawler | Java | 138 / 183 / 230 k | 19 | 19 / 22 k | 7 |
| Seabed crawler | Cuis scripts | 162 / 230 / 507 k | 50 | 25 / 34 k | 14 |
| Sims Hotels | Cuis MCP | 268 / 319 / 396 k | 15 | 16 / 23 k | 14 |
| Sims Hotels | Java | 209 / 249 / 300 k | 16 | 13 / 18 k | 15 |
| Sims Hotels | Cuis scripts | 196 / 254 / 468 k | 39 | 21 / 25 k | 7 |

Every run (scripts = scripts run / failed, script cell only):

| Exercise | Cell | Given tests | Input-side | Uncached | Output | Thinking | Requests | Calls | Scripts | Tool errors | Seconds | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| CustomerImporter | Cuis MCP | 29/29 | 207 k | 27 k | 11 k | 3 k | 9 | 9 | - | 2 | 104 | `20260917-052112-30458` |
| CustomerImporter | Cuis MCP | 29/29 | 125 k | 27 k | 12 k | 5 k | 6 | 7 | - | 0 | 107 | `20260917-053306-35351` |
| CustomerImporter | Cuis MCP | 29/29 | 217 k | 29 k | 13 k | 4 k | 9 | 10 | - | 1 | 129 | `20260917-054716-40315` |
| CustomerImporter | Cuis MCP | 29/29 | 110 k | 23 k | 8 k | 2 k | 6 | 8 | - | 0 | 74 | `20260917-060025-45324` |
| CustomerImporter | Cuis MCP | 29/29 | 192 k | 28 k | 10 k | 3 k | 8 | 9 | - | 1 | 92 | `20260917-061402-50190` |
| CustomerImporter | Java | 29/29 | 151 k | 31 k | 10 k | 3 k | 6 | 6 | - | 1 | 85 | `20260917-052112-30457` |
| CustomerImporter | Java | 29/29 | 153 k | 32 k | 11 k | 4 k | 6 | 5 | - | 0 | 94 | `20260917-053530-35565` |
| CustomerImporter | Java | 29/29 | 220 k | 33 k | 12 k | 4 k | 8 | 7 | - | 0 | 105 | `20260917-054908-40691` |
| CustomerImporter | Java | 29/29 | 183 k | 32 k | 11 k | 4 k | 7 | 6 | - | 0 | 93 | `20260917-060211-45590` |
| CustomerImporter | Java | 29/29 | 187 k | 35 k | 13 k | 6 k | 7 | 7 | - | 0 | 113 | `20260917-061606-50550` |
| CustomerImporter | Cuis scripts | 29/29 | 196 k | 29 k | 11 k | 4 k | 8 | 7 | 9 / 3 | 2 | 118 | `20260917-052245-31254` |
| CustomerImporter | Cuis scripts | 29/29 | 154 k | 32 k | 12 k | 5 k | 7 | 6 | 6 / 0 | 0 | 113 | `20260917-053623-36280` |
| CustomerImporter | Cuis scripts | 29/29 | 153 k | 31 k | 11 k | 4 k | 7 | 6 | 7 / 1 | 0 | 118 | `20260917-055003-41292` |
| CustomerImporter | Cuis scripts | 29/29 | 198 k | 31 k | 9 k | 2 k | 9 | 8 | 8 / 1 | 1 | 94 | `20260917-060233-46181` |
| CustomerImporter | Cuis scripts | 29/29 | 190 k | 32 k | 13 k | 5 k | 9 | 8 | 8 / 2 | 1 | 121 | `20260917-061633-51143` |
| Seabed crawler | Cuis MCP | 48/48 | 201 k | 33 k | 23 k | 9 k | 9 | 11 | - | 0 | 201 | `20260917-052332-31857` |
| Seabed crawler | Cuis MCP | 47/47 | 223 k | 29 k | 20 k | 8 k | 11 | 10 | - | 0 | 181 | `20260917-053711-36986` |
| Seabed crawler | Cuis MCP | 48/48 | 184 k | 31 k | 22 k | 7 k | 9 | 10 | - | 0 | 194 | `20260917-055100-42019` |
| Seabed crawler | Cuis MCP | 49/49 | 189 k | 35 k | 27 k | 14 k | 8 | 8 | - | 0 | 251 | `20260917-060352-46963` |
| Seabed crawler | Cuis MCP | 43/43 | 152 k | 28 k | 20 k | 7 k | 8 | 9 | - | 0 | 173 | `20260917-061807-51921` |
| Seabed crawler | Java | 59/59 | 138 k | 32 k | 20 k | 5 k | 6 | 6 | - | 0 | 163 | `20260917-052505-32178` |
| Seabed crawler | Java | 53/53 | 230 k | 34 k | 22 k | 7 k | 9 | 8 | - | 0 | 182 | `20260917-053838-37234` |
| Seabed crawler | Java | 53/53 | 170 k | 34 k | 22 k | 7 k | 7 | 6 | - | 0 | 183 | `20260917-055224-42307` |
| Seabed crawler | Java | 53/53 | 183 k | 31 k | 19 k | 5 k | 8 | 7 | - | 0 | 152 | `20260917-060430-47161` |
| Seabed crawler | Java | 53/53 | 199 k | 32 k | 20 k | 6 k | 8 | 8 | - | 0 | 167 | `20260917-061856-52134` |
| Seabed crawler | Cuis scripts | 52/52 | 507 k | 46 k | 34 k | 13 k | 15 | 14 | 21 / 3 | 3 | 322 | `20260917-052725-32813` |
| Seabed crawler | Cuis scripts | 44/44 | 230 k | 38 k | 26 k | 10 k | 9 | 8 | 8 / 0 | 0 | 256 | `20260917-054044-37881` |
| Seabed crawler | Cuis scripts | 51/51 | 206 k | 38 k | 25 k | 10 k | 8 | 7 | 10 / 0 | 0 | 252 | `20260917-055445-42950` |
| Seabed crawler | Cuis scripts | 57/57 | 162 k | 38 k | 25 k | 10 k | 7 | 6 | 8 / 0 | 0 | 245 | `20260917-060710-47919` |
| Seabed crawler | Cuis scripts | 53/53 | 251 k | 37 k | 26 k | 10 k | 10 | 9 | 15 / 0 | 0 | 261 | `20260917-062131-52827` |
| Sims Hotels | Cuis MCP | 39/39 | 319 k | 33 k | 16 k | 4 k | 12 | 14 | - | 0 | 136 | `20260917-052756-33508` |
| Sims Hotels | Cuis MCP | 39/39 | 287 k | 36 k | 19 k | 7 k | 10 | 12 | - | 0 | 154 | `20260917-054147-38610` |
| Sims Hotels | Cuis MCP | 39/39 | 268 k | 38 k | 18 k | 7 k | 9 | 10 | - | 0 | 153 | `20260917-055533-43670` |
| Sims Hotels | Cuis MCP | 41/41 | 396 k | 44 k | 23 k | 10 k | 12 | 13 | - | 0 | 198 | `20260917-060834-48529` |
| Sims Hotels | Cuis MCP | 40/40 | 327 k | 40 k | 21 k | 6 k | 11 | 13 | - | 1 | 175 | `20260917-062150-53458` |
| Sims Hotels | Java | 39/39 | 209 k | 38 k | 13 k | 4 k | 7 | 6 | - | 0 | 112 | `20260917-053042-33823` |
| Sims Hotels | Java | 43/43 | 224 k | 38 k | 18 k | 4 k | 8 | 8 | - | 0 | 140 | `20260917-054449-38930` |
| Sims Hotels | Java | 39/39 | 249 k | 35 k | 13 k | 3 k | 9 | 8 | - | 0 | 104 | `20260917-055833-43946` |
| Sims Hotels | Java | 39/39 | 290 k | 42 k | 17 k | 5 k | 9 | 8 | - | 0 | 140 | `20260917-061134-48859` |
| Sims Hotels | Java | 40/40 | 300 k | 43 k | 16 k | 4 k | 9 | 9 | - | 0 | 131 | `20260917-062519-53824` |
| Sims Hotels | Cuis scripts | 39/39 | 216 k | 45 k | 24 k | 9 k | 7 | 8 | 10 / 0 | 0 | 202 | `20260917-053241-34753` |
| Sims Hotels | Cuis scripts | 39/39 | 401 k | 50 k | 22 k | 9 k | 12 | 11 | 14 / 1 | 1 | 211 | `20260917-054519-39545` |
| Sims Hotels | Cuis scripts | 40/40 | 196 k | 39 k | 21 k | 8 k | 7 | 6 | 7 / 0 | 0 | 177 | `20260917-055917-44605` |
| Sims Hotels | Cuis scripts | 40/40 | 468 k | 50 k | 25 k | 8 k | 13 | 12 | 13 / 0 | 0 | 228 | `20260917-061226-49439` |
| Sims Hotels | Cuis scripts | 40/40 | 254 k | 44 k | 23 k | 6 k | 9 | 9 | 10 / 1 | 1 | 199 | `20260917-062612-54535` |

## Conclusion

**Supported on the input side: with five same-day runs the three environments cost the same
input-side tokens within what five runs resolve, except Sims Hotels where Java is 22 percent
below the MCP server.** Java against MCP: -5, -3 and -22 percent input-side, +2, -7 and -15
percent output, 11 to 18 percent fewer requests and 30 to 38 percent fewer calls. Cuis scripts
against MCP: -1, +22 and -20 percent input-side, but +7, +17 and +19 percent output on every
exercise and 13 to 32 percent more wall time. All 45 runs pass their given tests.

So the three one-run pictures are reconciled. 006 (Java 13 to 24 percent cheaper) was the
expensive day; 009 (scripts 15 to 62 percent dearer) was three draws at the high end of a
wide cell (the script cell's CV is 39 to 50 percent on two exercises, against 13 to 19 for the
others, because one run in five dumps the whole model and reads it back); and the same-day
medians of five say: input side equal, requests slightly fewer through files, output tokens
more through scripts. What survives of 009's mechanism is the output side: a definition inside
a `compile:` string, with its quoting and the plumbing around it, costs 7 to 19 percent more
output than the same definition as a tool argument or a Java file, on every exercise and with
output's CV of 7 to 15 percent.

The Java agent again worked through Bash almost only, 5 to 9 calls per run (a whole file per
heredoc, `gradle test | tail`), which is why it has the fewest calls everywhere; the MCP agent
makes one evaluate per definition step plus test runs (7 to 14 calls); the script agent 6 to
14 script runs, 0 to 3 of them failing and discarded by the wrapper.

Design: ifs are counted by regex in Java and by the parser in Smalltalk, so only the Smalltalk
cells compare: the same on CustomerImporter and Sims Hotels (8 and 4), the scripts' Seabed
crawler with 7 against 7. Mentor measures exist for the Cuis cells only.

Caveats: the Java code is a translation; the two Cuis cells share the image; the `--tools`
list lets the Java and script agents choose Bash over the file tools, which they did; no
guidance anywhere, so the heuristics cells of other experiments are not this one's baseline.

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.

## Conclusion

(pending)

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
