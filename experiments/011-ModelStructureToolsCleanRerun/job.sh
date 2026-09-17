#!/usr/bin/env bash
# One run of the experiment "011-ModelStructureToolsCleanRerun": run the cell, analyze it, record the run directory.
set -uo pipefail
index="$1"; repetition="$2"; scenario="$3"; config="$4"; technique="$5"; exercise="$6"
log="/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/experiments/011-ModelStructureToolsCleanRerun/logs/$(printf '%02d' "$index")-$scenario-${config//,/+}-$technique-$(basename "$exercise")-rep$repetition.log"
{
  echo "==> job $index: rep $repetition, $scenario / $config / $technique / $exercise"
  if [ "$scenario" = "cuis-script" ]; then
    output="$("/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/scripts/2-runScriptCell.sh" --experiment "011-ModelStructureToolsCleanRerun" --config "$config" --technique "$technique" \
        --exercise "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/$exercise" --model "claude-opus-5" --effort "high" --budget "15" --timeout "2400" \
        --note "experiment 011-ModelStructureToolsCleanRerun, repetition $repetition" 2>&1)"
  elif [ "$scenario" = "java-gradle" ]; then
    output="$("/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/scripts/2-runJavaCell.sh" --experiment "011-ModelStructureToolsCleanRerun" --config "$config" --technique "$technique" \
        --exercise "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/$exercise" --model "claude-opus-5" --effort "high" --budget "15" --timeout "2400" \
        --note "experiment 011-ModelStructureToolsCleanRerun, repetition $repetition" 2>&1)"
  else
    output="$("/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/scripts/2-runCell.sh" --experiment "011-ModelStructureToolsCleanRerun" --scenario "$scenario" --config "$config" --technique "$technique" \
        --exercise "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/$exercise" --model "claude-opus-5" --effort "high" --budget "15" --timeout "2400" \
        --note "experiment 011-ModelStructureToolsCleanRerun, repetition $repetition" 2>&1)"
  fi
  status=$?
  printf '%s\n' "$output"
  run="$(printf '%s\n' "$output" | sed -n 's/^==> done: //p' | tail -1)"
  if [ -n "$run" ] && [ -f "$run/manifest.json" ]; then
    [ "$scenario" = "java-gradle" ] || "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/scripts/3-analyzeRun.sh" "$run" 2>&1 || echo "analysis failed for $run"
    echo "$run" >> "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/experiments/011-ModelStructureToolsCleanRerun/runs.txt"
  else
    echo "run $index did not produce a manifest (status $status)"
    echo "FAILED $index $scenario $config $technique $exercise rep $repetition" >> "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/experiments/011-ModelStructureToolsCleanRerun/failures.txt"
  fi
} > "$log" 2>&1
echo "job $index finished: $(tail -1 "$log")"
