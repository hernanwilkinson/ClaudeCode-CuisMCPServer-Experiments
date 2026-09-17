# 010-VariancePilot

## Hypothesis

E0 pilot: run-to-run variance of one cell on one exercise, same day. Ten runs of 1-Evaluate+TestRunning with no guidance on Ada's Coffee (2019-2c-parcial1), Opus 5 high, free technique, two in parallel. Purpose: measure the spread of tokens, requests and calls across identical runs so the other experiments' one-to-four-run comparisons can be read against it (H5 of the research design: fewer than five runs per cell is not interpretable).

## Design

Started 2026-09-17. Model `claude-opus-5`, effort high, technique `free`,
10 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `1-Evaluate+TestRunning:1-Empty:free`

Exercises:
- `exercises/2019-2c-parcial1`


## Conclusion

(pending)

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.

## Results

Ten runs between 00:49 and 00:57 on 2026-09-17, two at a time, all completed and all passing
the 14 given tests. [table.md](table.md) has every measure; the spread below comes from
`scripts/cell-spread.py experiments/010-VariancePilot`.

| Run | Given tests | Input-side | Uncached input | Cache read | Output | Thinking | Requests | Calls | Tool errors | Seconds | Ifs | Mentor findings | Coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `20260917-004943-99391` | 14/14 | 104 k | 20 k | 84 k | 10 k | 3 k | 7 | 8 | 1 | 83 | 0 | 18 | 87.7 |
| `20260917-004943-99392` | 14/14 | 86 k | 20 k | 66 k | 8 k | 2 k | 6 | 7 | 0 | 70 | 0 | 21 | 83.8 |
| `20260917-005112-1614` | 14/14 | 83 k | 17 k | 66 k | 8 k | 2 k | 6 | 7 | 0 | 68 | 0 | 25 | 88.9 |
| `20260917-005124-1776` | 14/14 | 123 k | 18 k | 105 k | 9 k | 2 k | 9 | 10 | 1 | 75 | 0 | 21 | 84.3 |
| `20260917-005237-2449` | 14/14 | 92 k | 17 k | 75 k | 8 k | 2 k | 7 | 8 | 0 | 68 | 0 | 22 | 88.6 |
| `20260917-005256-2885` | 14/14 | 124 k | 19 k | 105 k | 10 k | 2 k | 8 | 10 | 1 | 81 | 0 | 22 | 86.7 |
| `20260917-005402-4127` | 14/14 | 131 k | 18 k | 113 k | 9 k | 2 k | 9 | 10 | 1 | 74 | 0 | 20 | 88.6 |
| `20260917-005434-5016` | 14/14 | 113 k | 16 k | 96 k | 8 k | 2 k | 8 | 8 | 1 | 71 | 0 | 22 | 88.6 |
| `20260917-005533-7806` | 14/14 | 97 k | 18 k | 79 k | 9 k | 2 k | 7 | 7 | 1 | 74 | 0 | 17 | 90.1 |
| `20260917-005602-8591` | 14/14 | 78 k | 16 k | 62 k | 8 k | 2 k | 6 | 6 | 0 | 67 | 0 | 22 | 88.6 |

Spread over the ten runs:

| Measure | Min | Median | Max | Mean | SD | CV % | Max / min |
|---|---|---|---|---|---|---|---|
| Input-side tokens | 78 k | 100 k | 131 k | 103 k | 19 k | 18 | 1.68 |
| Uncached input | 16 k | 18 k | 20 k | 18 k | 1 k | 7 | 1.22 |
| Cache read | 62 k | 81 k | 113 k | 85 k | 19 k | 22 | 1.83 |
| Output | 8 k | 9 k | 10 k | 9 k | 1 k | 7 | 1.24 |
| Thinking | 2 k | 2 k | 3 k | 2 k | 0 k | 21 | 1.94 |
| Requests | 6 | 7 | 9 | 7.3 | 1.2 | 16 | 1.50 |
| Tool calls | 6 | 8 | 10 | 8.1 | 1.4 | 18 | 1.67 |
| Seconds | 67 | 73 | 83 | 73 | 5.5 | 7 | 1.24 |
| Cost | $0.40 | $0.44 | $0.49 | $0.44 | $0.03 | 7 | 1.23 |
| Mentor findings | 17 | 21.5 | 25 | 21 | 2.3 | 11 | 1.47 |
| Coverage % | 83.8 | 88.6 | 90.1 | 87.6 | 2.1 | 2 | 1.08 |

The same cell on the same exercise in earlier experiments, for scale:

| Experiment | Day | Runs | Input-side | Output | Requests |
|---|---|---|---|---|---|
| 008 | 2026-09-16 | 3 | 87 k, 110 k, 125 k | 9 k, 7 k, 10 k | 6, 8, 8 |
| 008 | 2026-09-15 | 1 | 611 k | 21 k | 26 |
| 003 | 2026-09-11 | 1 | 169 k | 15 k | 10 |
| 002 (contaminated) | 2026-09-10 | 3 | 318 k, 357 k, 361 k | 19 k, 20 k, 20 k | 13, 14, 14 |

## Conclusion

**Within one hour on one day, ten identical runs stay inside a narrow band: 78 to 131 k
input-side tokens (1.7x from the smallest to the largest, CV 18 percent), 8 to 10 k output
tokens (CV 7 percent), 6 to 9 requests, 67 to 83 seconds, every run passing, 0 ifs in every
delivered model.** The input side moves with the number of requests (each one re-reads the
context); the output and the uncached input hardly move at all, so the work done is the same
and what varies is how many exchanges it took.

Against that band the day effect is a different order of magnitude: the same cell cost 611 k
input-side tokens on 2026-09-15 and 318 to 361 k on 2026-09-10, five and three times the median
of today's ten, with output tokens 2 to 3 times larger too. So the variance every earlier
conclusion assumed is small within a day and large across days, which is why same-day controls
matter more than repetitions.

What this says about reading the other experiments (H5 of the research design):

- A single-run difference below about 1.7x on the input side, or below about 25 percent on
  output tokens or requests, can be two draws from the same distribution; the results of 003
  (1.7x and 3.9x), 004 (1.1x to 1.6x), 005 (1.1x to 2.8x) and 008 (+13 to +66 percent) sit on
  both sides of that line, so the ones under it are not established by their single runs.
- With CV 18 percent, the mean of five runs has a standard error of about 8 percent; two cells
  of five runs each resolve a difference of roughly 25 percent on the input side and 10 percent
  on output tokens. Five same-day runs per cell is the standard the queued repetitions (013
  to 016) use.
- Output tokens and uncached input are the stable measures (CV 7 percent) and the better ones
  for comparing what the agent writes; input-side tokens carry the request count and should be
  read together with it.

Caveats: one exercise, one cell, one hour; the spread of a longer or greenfield exercise may be
wider (008's BAJE runs on the 16th ranged 116 to 283 k, 2.4x). Runs went two at a time, so the
ten are five pairs; no pair effect is visible in the table.

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
