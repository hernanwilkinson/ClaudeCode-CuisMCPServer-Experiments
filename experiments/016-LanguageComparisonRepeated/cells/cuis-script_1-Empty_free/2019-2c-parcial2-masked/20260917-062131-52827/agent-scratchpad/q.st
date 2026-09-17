| out |
out := StdIOWriteStream stdout.
(SystemOrganization listAtCategoryNamed: #SurveyCrawler), (SystemOrganization listAtCategoryNamed: #'SurveyCrawler-Tests') do: [:n | | c |
  c := Smalltalk at: n.
  out nextPutAll: '===== ', c definition; newLine.
  { c. c class } do: [:b | b selectors asSortedCollection do: [:s |
     out nextPutAll: '--- ', b name, ' >> ', (b whichCategoryIncludesSelector: s); newLine; nextPutAll: (b sourceCodeAt: s); newLine]]].
out flush.
1
