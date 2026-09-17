#!/usr/bin/env bash
# Tool scenarios: which base image each one starts from, which packages it loads, and which
# tool group and decorator classes survive in it. Sourced by the builder, the verifier and the
# runner, so the definition lives in exactly one place.
#
# The server serves every concrete MCPToolGroup subclass present in the image and applies every
# concrete MCPToolDecorator subclass present, so a scenario is defined by what is left in the
# image after loading its packages and removing the classes it must not offer.
#
# Lists are space separated. "-" means an empty list.

SCENARIOS="1-Evaluate+TestRunning 2-ModelStructure+Package 3-Search 4-Refactoring 5-LiveTyping 6-LiveTypingRefactoring 7-Debug 1-Evaluate+TestRunning-University 4-Refactoring-University"

# The two -University scenarios are controls for the LiveTyping cells: the University base and
# the LiveTyping VM, the same packages, but the LiveTyping tool group and decorators removed, so
# a cell on them differs from a LiveTyping cell only in the type information served.

# Tools-Finder is required explicitly on both bases so every scenario image has it; the
# University image already brings it through LiveTyping, the plain Cuis image does not.
CUIS_BASE_FEATURES="Aconcagua Chalten CodeCoverage Tools-Finder MCPServer"
UNIVERSITY_BASE_FEATURES="Tools-Finder MCPServer MCPServerMethodFinder MCPServerExtraRefactoring MCPServerLiveTyping"

GROUPS_1="MCPImageTools MCPTestRunningTools"
GROUPS_2="$GROUPS_1 MCPModelStructureTools MCPPackageTools"
GROUPS_3="$GROUPS_2 MCPSearchTools MCPMethodFinderTools"
GROUPS_4="$GROUPS_3 MCPRefactoringTools MCPExtraRefactoringTools"
GROUPS_5="$GROUPS_4 MCPLiveTypingTools"
GROUPS_7="$GROUPS_5 MCPDebugTools"

DECORATORS_5="MCPActualImplementorsDecorator MCPActualSendersDecorator MCPInstanceVariableTypesDecorator MCPMethodTypesDecorator"
DECORATORS_6="$DECORATORS_5 MCPAddParameterInActualScopeDecorator MCPChangeKeywordsOrderInActualScopeDecorator MCPExtractAsParameterInActualScopeDecorator MCPInlineMethodInActualScopeDecorator MCPRemoveParameterInActualScopeDecorator MCPRenameSelectorInActualScopeDecorator MCPExtractParameterObjectInActualScopeDecorator MCPMoveInstanceVariableInActualScopeDecorator MCPMoveMethodInActualScopeDecorator"

# The analysis image is not a scenario the agent runs in: it is the University base with every
# tool, TestLint and SmalltalkMentor, into which 3-analyzeRun.sh files a run's package to measure
# it. Built by the same builder, kept out of SCENARIOS so "all" and the runner never pick it.
ANALYSIS_SCENARIO="analysis"
ANALYSIS_FEATURES="$UNIVERSITY_BASE_FEATURES MCPServerLiveTypingRefactorings MCPServerExtraLiveTypingRefactorings SmalltalkMentor TestLint"

# cuis: plain Cuis image on the standard VM, updated with -u. university: CuisUniversity image on
# the LiveTyping VM, already updated.
scenario_base() {
  case "$1" in
    *-University) echo university ;;
    1-*|2-*|3-*|4-*) echo cuis ;;
    5-*|6-*|7-*|analysis) echo university ;;
    *) echo "unknown scenario: $1" >&2; return 1 ;;
  esac
}

scenario_features() {
  case "$1" in
    1-Evaluate+TestRunning|2-ModelStructure+Package) echo "$CUIS_BASE_FEATURES" ;;
    3-Search)      echo "$CUIS_BASE_FEATURES MCPServerMethodFinder" ;;
    4-Refactoring) echo "$CUIS_BASE_FEATURES MCPServerMethodFinder MCPServerExtraRefactoring" ;;
    5-LiveTyping|1-Evaluate+TestRunning-University|4-Refactoring-University) echo "$UNIVERSITY_BASE_FEATURES" ;;
    6-LiveTypingRefactoring|7-Debug)
      echo "$UNIVERSITY_BASE_FEATURES MCPServerLiveTypingRefactorings MCPServerExtraLiveTypingRefactorings" ;;
    analysis) echo "$ANALYSIS_FEATURES" ;;
    *) echo "unknown scenario: $1" >&2; return 1 ;;
  esac
}

scenario_tool_groups() {
  case "$1" in
    1-Evaluate+TestRunning|1-Evaluate+TestRunning-University) echo "$GROUPS_1" ;;
    2-ModelStructure+Package) echo "$GROUPS_2" ;;
    3-Search)                 echo "$GROUPS_3" ;;
    4-Refactoring|4-Refactoring-University) echo "$GROUPS_4" ;;
    5-LiveTyping|6-LiveTypingRefactoring) echo "$GROUPS_5" ;;
    7-Debug|analysis)         echo "$GROUPS_7" ;;
    *) echo "unknown scenario: $1" >&2; return 1 ;;
  esac
}

scenario_decorators() {
  case "$1" in
    1-*|2-*|3-*|4-*) echo "-" ;;
    5-LiveTyping)    echo "$DECORATORS_5" ;;
    6-*|7-*|analysis) echo "$DECORATORS_6" ;;
    *) echo "unknown scenario: $1" >&2; return 1 ;;
  esac
}

# The batch tool (smalltalk_batch, MCPImageTools) calls several tools in one call. The evaluate-only
# scenarios do without it, so that "evaluate and the test tools" stays exactly that; every other
# scenario offers it, since batching is what makes granular tools affordable.
scenario_batch_tool() {
  case "$1" in
    1-*) echo no ;;
    *) echo yes ;;
  esac
}

scenario_image_name() {
  echo "MCP-$1"
}

# The VM binary and the base image files for a base, relative to the Cuis-Smalltalk-Dev clone.
base_vm() {
  case "$1" in
    cuis)       echo "CuisVM.app/Contents/MacOS/Squeak" ;;
    university) echo "LiveTypingVM.app/Contents/MacOS/Squeak" ;;
  esac
}

base_image_glob() {
  case "$1" in
    cuis)       echo "CuisImage/Cuis?.?-????.image" ;;
    university) echo "CuisImage/CuisUniversity?.?-????.image" ;;   # not a working copy such as CuisUniversity7.9-8182-MCPServer.image
  esac
}

base_update_flag() {
  case "$1" in
    cuis)       echo "-u" ;;
    university) echo "" ;;
  esac
}
