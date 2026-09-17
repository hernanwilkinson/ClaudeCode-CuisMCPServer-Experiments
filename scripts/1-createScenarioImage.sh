#!/usr/bin/env bash
# Build the image of one tool scenario, or of every scenario.
#
#   scripts/1-createScenarioImage.sh 1-Evaluate+TestRunning
#   scripts/1-createScenarioImage.sh all
#
# For each scenario: copy its base image and changes file from the Cuis-Smalltalk-Dev clone into
# the clone's CuisImage directory under the scenario image name, start it there with the base VM
# (with -u on the plain Cuis base), evaluate scenario-image.st through -s so it loads the packages,
# removes the tool groups and decorators the scenario must not offer, writes expected-tools.json
# and saves itself, then move the result into scenarios/<scenario>/ together with the sources file
# and a manifest. The build happens inside CuisImage because Cuis finds package repositories
# relative to the image location, and the base files are never modified: the copies are.
#
# Builds run one at a time: they share CuisImage/expected-tools.json while running.
#
# Environment overrides: CUIS_DEV (the Cuis-Smalltalk-Dev clone), SCENARIOS_DIR (output root).
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
# shellcheck source=scenarios.sh
source "$SCRIPT_DIR/scenarios.sh"

CUIS_DEV="${CUIS_DEV:-/Users/hernan/Documents/Cuis/Cuis-University-Installer/Cuis-Smalltalk-Dev}"
SCENARIOS_DIR="${SCENARIOS_DIR:-$PROJECT_DIR/scenarios}"
BUILD_SCRIPT="$SCRIPT_DIR/scenario-image.st"

if [ $# -lt 1 ]; then
  echo "usage: $(basename "$0") <scenario>... | all" >&2
  echo "scenarios: $SCENARIOS" >&2
  exit 2
fi

if which -s brew; then
  export DYLD_LIBRARY_PATH="$(brew --prefix)/lib:${DYLD_LIBRARY_PATH:-}"
fi

single_file_matching() {
  local pattern="$1"
  local matches=()
  local candidate
  for candidate in $pattern; do
    [ -f "$candidate" ] && matches+=("$candidate")
  done
  if [ "${#matches[@]}" -ne 1 ]; then
    echo "expected exactly one file matching $pattern in $CUIS_DEV, found ${#matches[@]}" >&2
    return 1
  fi
  echo "${matches[0]}"
}

git_commit_of() {
  git -C "$1" rev-parse HEAD 2>/dev/null || echo "unknown"
}

build_scenario() {
  local scenario="$1"
  local base vm baseImage updateFlag imageName workImage workChanges target
  base="$(scenario_base "$scenario")"
  vm="$CUIS_DEV/$(base_vm "$base")"
  updateFlag="$(base_update_flag "$base")"
  imageName="$(scenario_image_name "$scenario")"
  workImage="$CUIS_DEV/CuisImage/$imageName.image"
  workChanges="$CUIS_DEV/CuisImage/$imageName.changes"
  target="$SCENARIOS_DIR/$scenario"

  baseImage="$(cd "$CUIS_DEV" && single_file_matching "$(base_image_glob "$base")")"
  [ -x "$vm" ] || { echo "VM not found: $vm" >&2; return 1; }

  echo "==> $scenario"
  echo "    base      $base ($(basename "$baseImage"))"
  echo "    features  $(scenario_features "$scenario")"
  echo "    groups    $(scenario_tool_groups "$scenario")"
  echo "    decorators $(scenario_decorators "$scenario")"

  rm -f "$workImage" "$workChanges" "$CUIS_DEV/CuisImage/expected-tools.json" "$CUIS_DEV/CuisImage/build-error.txt"
  cp "$CUIS_DEV/$baseImage" "$workImage"
  cp "$CUIS_DEV/${baseImage%.image}.changes" "$workChanges"

  local status=0
  (
    cd "$CUIS_DEV"
    # shellcheck disable=SC2086
    "$vm" "CuisImage/$imageName.image" $updateFlag -s "$BUILD_SCRIPT" \
      "$scenario" \
      "$(scenario_features "$scenario")" \
      "$(scenario_tool_groups "$scenario")" \
      "$(scenario_decorators "$scenario")" \
      "$(scenario_batch_tool "$scenario")"
  ) || status=$?

  if [ -f "$CUIS_DEV/CuisImage/build-error.txt" ]; then
    echo "build failed inside the image:" >&2
    cat "$CUIS_DEV/CuisImage/build-error.txt" >&2
    return 1
  fi
  if [ "$status" -ne 0 ]; then
    echo "VM exited with status $status" >&2
    return 1
  fi
  if [ ! -f "$CUIS_DEV/CuisImage/expected-tools.json" ]; then
    echo "the image did not write expected-tools.json; the build script did not run to the end" >&2
    return 1
  fi

  rm -rf "$target"
  mkdir -p "$target"
  mv "$workImage" "$workChanges" "$target/"
  mv "$CUIS_DEV/CuisImage/expected-tools.json" "$target/"
  cp "$CUIS_DEV"/CuisImage/*.sources "$target/"
  [ -f "$CUIS_DEV/CuisImage/UnicodeData.txt" ] && cp "$CUIS_DEV/CuisImage/UnicodeData.txt" "$target/"

  python3 - "$target/manifest.json" <<EOF
import json, hashlib, sys
manifest = {
    "scenario": "$scenario",
    "base": "$base",
    "baseImage": "$(basename "$baseImage")",
    "vm": "$vm",
    "image": "$imageName.image",
    "features": "$(scenario_features "$scenario")".split(),
    "toolGroups": "$(scenario_tool_groups "$scenario")".split(),
    "decorators": [d for d in "$(scenario_decorators "$scenario")".split() if d != "-"],
    "batchTool": "$(scenario_batch_tool "$scenario")" == "yes",
    "cuisDevCommit": "$(git_commit_of "$CUIS_DEV")",
    "mcpServerCommit": "$(git_commit_of "$CUIS_DEV/Packages/Cuis-MCPServer")",
    "builtAt": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
    "imageSha256": hashlib.sha256(open("$target/$imageName.image", "rb").read()).hexdigest(),
}
json.dump(manifest, open(sys.argv[1], "w"), indent=2)
EOF

  echo "    built     $target"
  python3 -c "import json; d=json.load(open('$target/expected-tools.json')); print('    tools    ', len(d['tools']), 'served, groups', d['toolGroups'])"
}

if [ "$1" = "all" ]; then
  set -- $SCENARIOS
fi
for scenario in "$@"; do
  build_scenario "$scenario"
done
