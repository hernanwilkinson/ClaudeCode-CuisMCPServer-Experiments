"Run one script the agent wrote against the image, the way the evaluate tool would: the script
file named by the first argument is read and evaluated; the printString of its value goes to
stdout; an error of any kind (syntax, undeclared variable, runtime) is printed to stdout with
ERROR: in front and the VM quits with status 1 WITHOUT saving, so a failed script leaves the
image as it was (only UnhandledError is handled, not Error: SUnit records a test's error by
catching UnhandledError itself, and an Error handler here would take it first and abort the
whole test run); a script that ends normally saves the image and quits with status 0, so its
definitions are there for the next script. Evaluated by the VM through -s."

| stdout scriptPath scriptText result quitWith |
stdout := StdIOWriteStream stdout.
"The script arguments are only there while the start-up script runs, so they are read now, not in the forked block."
scriptPath := Smalltalk startUpScriptArguments first.
quitWith := [ :aText :aStatus |
	stdout nextPutAll: aText; newLine; flush.
	Smalltalk quitPrimitive: aStatus ].
[
	(Delay forSeconds: 1) wait.
	[
		scriptText := (FileEntry withAbsolutePathName: scriptPath) textContents.
		result := Compiler evaluate: scriptText.
		stdout nextPutAll: result printString; newLine; flush.
		Smalltalk saveAndQuit ]
	on: UnhandledError, SyntaxErrorNotification
	do: [ :anError | | reported |
		reported := (anError isKindOf: UnhandledError) ifTrue: [ anError exception ] ifFalse: [ anError ].
		quitWith value: 'ERROR: ', reported class name, ': ', reported description value: 1 ]
] fork
