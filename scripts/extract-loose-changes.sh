#!/usr/bin/env bash
# File out what a run's agent changed outside the exercise package. The package file-out the
# runner makes carries the package's classes and its "*Package" extension categories only, so an
# extension on a base class classified under a category that names no package (e.g. "*Foo" when
# the package is "Foo-Bar") is left behind and the package fails in a fresh image.
#
#   scripts/extract-loose-changes.sh <run-dir>
#
# Sweeps every change set of the run's saved image for methods that changed and belong neither
# to the package's classes nor to a "*Package" extension category, and files those out as chunks.
# Writes <run>/output/LooseChanges.st (empty when there is nothing) and
# <run>/output/loose-changes.json (the methods, the classes changed outside the package, the
# change sets seen). Starts the run's saved image, saves nothing, stops it.
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RUN="$(cd "$1" && pwd)"
[ -f "$RUN/parameters.json" ] || { echo "$RUN has no parameters.json" >&2; exit 1; }
eval "$(python3 -c "
import json, shlex
p = json.load(open('$RUN/parameters.json'))
print('VM=%s; IMAGE_FILE=%s; PACKAGE=%s' % (shlex.quote(p['VM']), shlex.quote(p['IMAGE_FILE']), shlex.quote(p['PACKAGE'])))")"
[ -f "$IMAGE_FILE" ] || { echo "no saved image at $IMAGE_FILE" >&2; exit 1; }
PORT="$(python3 -c 'import socket; s=socket.socket(); s.bind(("127.0.0.1",0)); print(s.getsockname()[1]); s.close()')"
TOKEN="$(openssl rand -hex 16)"
SMALLTALK_MCP_TOKEN="$TOKEN" "$VM" -headless "$IMAGE_FILE" "--mcpHttpPort=$PORT" > "$RUN/output/loose-changes-vm.log" 2>&1 &
VM_PID=$!
trap 'kill "$VM_PID" 2>/dev/null || true; wait "$VM_PID" 2>/dev/null || true' EXIT
mcp() { python3 "$SCRIPT_DIR/mcp-client.py" --port "$PORT" --token "$TOKEN" "$@"; }
mcp wait 120 > /dev/null
mcp evaluate "[ | package categoryOf isInPackage loose classesOutside fileOut chunkFor |
	package := '$PACKAGE'.
	categoryOf := [ :aClass | aClass theNonMetaClass category ifNil: [ '' ] ].
	isInPackage := [ :aMethodReference | | methodCategory classCategory |
		classCategory := categoryOf value: aMethodReference actualClass.
		methodCategory := (aMethodReference actualClass compiledMethodAt: aMethodReference selector) category ifNil: [ '' ].
		classCategory = package
			or: [ (classCategory beginsWith: package, '-')
			or: [ methodCategory = ('*', package)
			or: [ methodCategory beginsWith: '*', package, '-' ] ] ] ].
	loose := OrderedCollection new.
	ChangeSet allChangeSets do: [ :aChangeSet |
		aChangeSet changedMessageList do: [ :aMethodReference |
			((aMethodReference actualClass includesSelector: aMethodReference selector)
				and: [ ((categoryOf value: aMethodReference actualClass) beginsWith: 'MCPServer') not ]
				and: [ (isInPackage value: aMethodReference) not
				and: [ (loose includes: aMethodReference) not ] ])
					ifTrue: [ loose add: aMethodReference ] ] ].
	classesOutside := OrderedCollection new.
	ChangeSet allChangeSets do: [ :aChangeSet |
		aChangeSet changedClassNames do: [ :aClassName | | aClass |
			aClass := Smalltalk at: aClassName ifAbsent: [ nil ].
			(aClass notNil
				and: [ ((categoryOf value: aClass) beginsWith: 'MCPServer') not ]
				and: [ ((categoryOf value: aClass) = package or: [ (categoryOf value: aClass) beginsWith: package, '-' ]) not
				and: [ (classesOutside includes: aClassName) not ] ])
					ifTrue: [ classesOutside add: aClassName ] ] ].
	chunkFor := [ :aMethodReference | | aClass source category |
		aClass := aMethodReference actualClass.
		source := aClass sourceCodeAt: aMethodReference selector.
		category := (aClass compiledMethodAt: aMethodReference selector) category ifNil: [ 'as yet unclassified' ].
		'!', aClass name, ' methodsFor: ', category printString, '!', String newLineString,
			(source copyReplaceAll: '!' with: '!!'), '! !', String newLineString, String newLineString ].
	fileOut := WriteStream on: String new.
	loose do: [ :each | fileOut nextPutAll: (chunkFor value: each) ].
	(FileEntry withAbsolutePathName: '$RUN/output/LooseChanges.st') forceWriteStreamDo: [ :aStream | aStream nextPutAll: fileOut contents ].
	Json render: (OrderedDictionary new
		at: 'methods' put: (loose collect: [ :each | each printString ]) asArray;
		at: 'classesChangedOutsidePackage' put: classesOutside asArray;
		at: 'changeSets' put: (ChangeSet allChangeSets collect: [ :each | each name, ' (', each changedMessageList size printString, ' methods)' ]) asArray;
		at: 'fileOutChars' put: fileOut contents size;
		yourself) ] on: Error do: [ :anError | 'FAILED: ', anError description ]" > "$RUN/output/loose-changes.raw" 2>&1
python3 - "$RUN/output/loose-changes.raw" "$RUN/output/loose-changes.json" <<'EOF'
import json, sys
raw = open(sys.argv[1]).read().strip()
if raw.startswith("'") and raw.endswith("'"):
    raw = raw[1:-1].replace("''", "'")
if raw.startswith("FAILED"):
    sys.exit("    loose changes: " + raw)
data = json.loads(raw)
json.dump(data, open(sys.argv[2], "w"), indent=2)
print(f"    loose changes: {len(data['methods'])} method(s) outside the package {data['methods'] if data['methods'] else ''}; classes changed outside the package: {data['classesChangedOutsidePackage']}")
EOF
rm -f "$RUN/output/loose-changes.raw"
