#!/usr/bin/env bash
# One run of the matrix "tokens-opus-1": run the cell, analyze it, record the run directory.
set -uo pipefail
index="$1"; repetition="$2"; scenario="$3"; config="$4"; exercise="$5"
log="/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/experiments/002-LessTokensWithModelStructureTools/logs/$(printf '%02d' "$index")-$scenario-${config//,/+}-$(basename "$exercise")-rep$repetition.log"
{
  echo "==> job $index: rep $repetition, $scenario / $config / $exercise"
  output="$("/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/scripts/2-runCell.sh" --scenario "$scenario" --config "$config" --technique "free" \
      --exercise "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/$exercise" --model "claude-opus-5" --effort "high" --budget "15" --timeout "1800" \
      --note "matrix tokens-opus-1, repetition $repetition" 2>&1)"
  status=$?
  printf '%s\n' "$output"
  run="$(printf '%s\n' "$output" | sed -n 's/^==> done: //p' | tail -1)"
  if [ -n "$run" ] && [ -f "$run/manifest.json" ]; then
    "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/scripts/3-analyzeRun.sh" "$run" 2>&1 || echo "analysis failed for $run"
    echo "$run" >> "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/experiments/002-LessTokensWithModelStructureTools/runs.txt"
  else
    echo "run $index did not produce a manifest (status $status)"
    echo "FAILED $index $scenario $config $exercise rep $repetition" >> "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/experiments/002-LessTokensWithModelStructureTools/failures.txt"
  fi
} > "$log" 2>&1
echo "job $index finished: $(tail -1 "$log")"
