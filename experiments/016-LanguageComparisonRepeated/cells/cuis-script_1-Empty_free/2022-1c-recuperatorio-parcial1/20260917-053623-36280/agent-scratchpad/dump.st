| s |
s := WriteStream on: String new.
((SystemOrganization categories select: [:c | c beginsWith: 'CustomerImporter-Recu-1er-Parcial']) ) do: [:cat |
  s nextPutAll: '=== CATEGORY ', cat; newLine.
  (SystemOrganization listAtCategoryNamed: cat) do: [:cn | | c |
    c := Smalltalk at: cn.
    s nextPutAll: c definition; newLine.
    {c. c class} do: [:b |
      b selectors asSortedCollection do: [:sel |
        s nextPutAll: '--- ', b name, '>>', sel, ' [', (b organization categoryOfElement: sel) asString, ']'; newLine; nextPutAll: (b sourceCodeAt: sel) asString; newLine]]]].
StdIOWriteStream stdout nextPutAll: s contents; newLine.
nil
