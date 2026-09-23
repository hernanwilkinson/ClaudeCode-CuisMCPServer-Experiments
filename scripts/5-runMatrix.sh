#!/usr/bin/env bash
# Run a matrix of cells with repetitions as one experiment, analyze every run, and produce the
# comparison table.
#
#   scripts/5-runMatrix.sh --experiment 001-LessTokensWithModelStructureTools \
#       --hypothesis "Claude Code uses fewer tokens with the model-structure tools than with evaluate alone" \
#       --cells "1-Evaluate+TestRunning:1-Empty,2-ModelStructure+Package:2-EvaluateAsLastResource" \
#       --exercises "exercises/2019-2c-parcial1,exercises/2022-1c-parcial1" \
#       --repetitions 3 --model claude-opus-5 --effort high \
#       [--technique free] [--budget 15] [--timeout 1800] [--parallel 2]
#
# An experiment is one hypothesis or idea being tried; name it NNN-Description. A cell is
# "<scenario>:<config>" or "<scenario>:<config>:<technique>", where config may hold several
# names joined with "+" and the technique, when given, overrides --technique for that cell (so
# the technique can be a factor of the matrix). Runs are ordered
# by repetition, then exercise, then cell, so no cell runs in a block and drift over the session
# is spread evenly; --parallel runs that many at once (each run has its own image and port).
#
# Everything lands in experiments/<experiment>/:
#   README.md        the hypothesis and design (written once; add the results and conclusion)
#   plan.txt, parameters.json, job.sh, logs/   the plan and one log per run
#   cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/   the runs, one directory per cell
#   runs.txt, results.json, table.md           the runs in the order they finished, and the table
# Rerunning with the same experiment name appends further runs (the table is rebuilt from the
# cells directory).
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
EXPERIMENTS_DIR="${EXPERIMENTS_DIR:-$PROJECT_DIR/experiments}"

EXPERIMENT=""; HYPOTHESIS=""; CELLS=""; EXERCISES=""; REPETITIONS=3; MODEL="claude-fable-5-1"; EFFORT="high"
TECHNIQUE="free"; BUDGET="15"; TIMEOUT="1800"; PARALLEL=1
while [ $# -gt 0 ]; do
  case "$1" in
    --experiment|--label) EXPERIMENT="$2"; shift 2 ;;
    --hypothesis|--description) HYPOTHESIS="$2"; shift 2 ;;
    --cells) CELLS="$2"; shift 2 ;;
    --exercises) EXERCISES="$2"; shift 2 ;;
    --repetitions) REPETITIONS="$2"; shift 2 ;;
    --model) MODEL="$2"; shift 2 ;;
    --effort) EFFORT="$2"; shift 2 ;;
    --technique) TECHNIQUE="$2"; shift 2 ;;
    --budget) BUDGET="$2"; shift 2 ;;
    --timeout) TIMEOUT="$2"; shift 2 ;;
    --parallel) PARALLEL="$2"; shift 2 ;;
    -h|--help) sed -n '2,24p' "$0" | sed 's/^# \{0,1\}//'; exit 2 ;;
    *) echo "unknown option: $1" >&2; exit 2 ;;
  esac
done
[ -n "$EXPERIMENT" ] || { echo "--experiment is required: the NNN-Description directory under experiments/" >&2; exit 2; }
[ -n "$CELLS" ] && [ -n "$EXERCISES" ] || { echo "--cells and --exercises are required" >&2; exit 2; }

MATRIX="$EXPERIMENTS_DIR/$EXPERIMENT"
mkdir -p "$MATRIX/logs" "$MATRIX/cells"
echo "==> experiment $MATRIX"

# ---------------------------------------------------------------- the plan, interleaved

python3 - "$MATRIX/plan.txt" "$CELLS" "$EXERCISES" "$REPETITIONS" "$PROJECT_DIR" "$TECHNIQUE" <<'EOF'
import sys, json, os
plan, cells, exercises, repetitions, project, technique = sys.argv[1], sys.argv[2].split(","), sys.argv[3].split(","), int(sys.argv[4]), sys.argv[5], sys.argv[6]
lines = []
for repetition in range(1, repetitions + 1):
    for exercise in exercises:
        for cell in cells:
            parts = cell.split(":")
            scenario, config = parts[0], parts[1]
            cell_technique = parts[2] if len(parts) > 2 and parts[2] else technique
            lines.append(f"{repetition}\t{scenario}\t{config.replace('+', ',')}\t{cell_technique}\t{exercise.strip()}")
open(plan, "w").write("\n".join(lines) + "\n")
print(f"    {len(lines)} runs planned: {len(exercises)} exercise(s) x {len(cells)} cell(s) x {repetitions} repetition(s)")
EOF
cat > "$MATRIX/parameters.json" <<EOF
{"experiment": "$EXPERIMENT", "hypothesis": $(python3 -c 'import json,sys; print(json.dumps(sys.argv[1]))' "$HYPOTHESIS"),
 "cells": "$CELLS", "exercises": "$EXERCISES", "repetitions": $REPETITIONS,
 "model": "$MODEL", "effort": "$EFFORT", "technique": "$TECHNIQUE", "budget": $BUDGET, "timeout": $TIMEOUT,
 "parallel": $PARALLEL, "startedAt": "$(date -u +%Y-%m-%dT%H:%M:%SZ)", "claudeCodeVersion": "$(claude --version 2>/dev/null | head -1)"}
EOF

# ---------------------------------------------------------------- the README, written once

if [ ! -f "$MATRIX/README.md" ]; then
  python3 - "$MATRIX/README.md" "$MATRIX/parameters.json" <<'EOF'
import json, sys
readme, p = sys.argv[1], json.load(open(sys.argv[2]))
cells = "\n".join(f"- `{c}`" for c in p["cells"].split(","))
exercises = "\n".join(f"- `{e.strip()}`" for e in p["exercises"].split(","))
open(readme, "w").write(f"""# {p['experiment']}

## Hypothesis

{p['hypothesis'] or '(write the hypothesis or the idea being tried)'}

## Design

Started {p['startedAt'][:10]}. Model `{p['model']}`, effort {p['effort']}, technique `{p['technique']}`,
{p['repetitions']} repetitions per cell, budget ${p['budget']} and {p['timeout']} s per run, Claude Code {p['claudeCodeVersion']}.

Cells (scenario:configuration[:technique]):
{cells}

Exercises:
{exercises}

## Results

See [table.md](table.md) (rebuild it with `scripts/matrix-table.py experiments/{p['experiment']}`).

## Conclusion

(pending)

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
""")
EOF
fi

# ---------------------------------------------------------------- one job per plan line

cat > "$MATRIX/job.sh" <<EOF
#!/usr/bin/env bash
# One run of the experiment "$EXPERIMENT": run the cell, analyze it, record the run directory.
set -uo pipefail
index="\$1"; repetition="\$2"; scenario="\$3"; config="\$4"; technique="\$5"; exercise="\$6"
log="$MATRIX/logs/\$(printf '%02d' "\$index")-\$scenario-\${config//,/+}-\$technique-\$(basename "\$exercise")-rep\$repetition.log"
{
  echo "==> job \$index: rep \$repetition, \$scenario / \$config / \$technique / \$exercise"
  if [ "\$scenario" = "cuis-script" ]; then
    output="\$("$SCRIPT_DIR/2-runScriptCell.sh" --experiment "$EXPERIMENT" --config "\$config" --technique "\$technique" \\
        --exercise "$PROJECT_DIR/\$exercise" --model "$MODEL" --effort "$EFFORT" --budget "$BUDGET" --timeout "$TIMEOUT" \\
        --note "experiment $EXPERIMENT, repetition \$repetition" 2>&1)"
  elif [ "\$scenario" = "java-gradle" ]; then
    output="\$("$SCRIPT_DIR/2-runJavaCell.sh" --experiment "$EXPERIMENT" --config "\$config" --technique "\$technique" \\
        --exercise "$PROJECT_DIR/\$exercise" --model "$MODEL" --effort "$EFFORT" --budget "$BUDGET" --timeout "$TIMEOUT" \\
        --note "experiment $EXPERIMENT, repetition \$repetition" 2>&1)"
  elif [ "\$scenario" = "python-pytest" ]; then
    output="\$("$SCRIPT_DIR/2-runPythonCell.sh" --experiment "$EXPERIMENT" --config "\$config" --technique "\$technique" \\
        --exercise "$PROJECT_DIR/\$exercise" --model "$MODEL" --effort "$EFFORT" --budget "$BUDGET" --timeout "$TIMEOUT" \\
        --note "experiment $EXPERIMENT, repetition \$repetition" 2>&1)"
  else
    output="\$("$SCRIPT_DIR/2-runCell.sh" --experiment "$EXPERIMENT" --scenario "\$scenario" --config "\$config" --technique "\$technique" \\
        --exercise "$PROJECT_DIR/\$exercise" --model "$MODEL" --effort "$EFFORT" --budget "$BUDGET" --timeout "$TIMEOUT" \\
        --note "experiment $EXPERIMENT, repetition \$repetition" 2>&1)"
  fi
  status=\$?
  printf '%s\n' "\$output"
  run="\$(printf '%s\n' "\$output" | sed -n 's/^==> done: //p' | tail -1)"
  if [ -n "\$run" ] && [ -f "\$run/manifest.json" ]; then
    case "\$scenario" in java-gradle|python-pytest) ;; *) "$SCRIPT_DIR/3-analyzeRun.sh" "\$run" 2>&1 || echo "analysis failed for \$run" ;; esac
    echo "\$run" >> "$MATRIX/runs.txt"
  else
    echo "run \$index did not produce a manifest (status \$status)"
    echo "FAILED \$index \$scenario \$config \$technique \$exercise rep \$repetition" >> "$MATRIX/failures.txt"
  fi
} > "\$log" 2>&1
echo "job \$index finished: \$(tail -1 "\$log")"
EOF
chmod +x "$MATRIX/job.sh"

# ---------------------------------------------------------------- run, --parallel at a time

awk '{ print NR "\t" $0 }' "$MATRIX/plan.txt" | tr '\t' '\n' | xargs -n 6 -P "$PARALLEL" "$MATRIX/job.sh"

# ---------------------------------------------------------------- table

python3 "$SCRIPT_DIR/matrix-table.py" "$MATRIX"
echo "==> $MATRIX/table.md"
