| lines header body compileBlock count |
count := 0.
compileBlock := [
	header ifNotNil: [ | parts classPart target |
		parts := header findTokens: '|'.
		classPart := (parts first copyReplaceAll: '!!!' with: '') withBlanksTrimmed findTokens: ' '.
		target := Smalltalk at: classPart first asSymbol.
		classPart size > 1 ifTrue: [ target := target class ].
		(target compile: body contents withBlanksTrimmed classified: parts second withBlanksTrimmed) ifNil: [ self error: 'compile failed: ', header ].
		count := count + 1 ] ].
lines := '/private/tmp/claude-501/-private-tmp-claude-cells-20260917-052725-32813-32813/aa6f6eae-1ee6-4e33-998b-292571c3ea14/scratchpad/methods.txt' asFileEntry textContents lines.
lines do: [ :line |
	(line beginsWith: '!!!')
		ifTrue: [ compileBlock value. header := line. body := WriteStream on: String new ]
		ifFalse: [ body nextPutAll: line; newLine ] ].
compileBlock value.
count
