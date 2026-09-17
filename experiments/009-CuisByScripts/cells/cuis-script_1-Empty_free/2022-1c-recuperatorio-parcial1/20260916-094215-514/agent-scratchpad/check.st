| out |
out := StdIOWriteStream stdout.
#(#isAllDigits #isAllLetters #asInteger #penultimate #allSatisfy:) do: [:s | out nextPutAll: s, ' ', (String canUnderstand: s) printString; newLine].
#(#Identification #DNI #CUIT #ZipCode #OldZipCode #NewZipCode #IdentificationType) do: [:s | out nextPutAll: s, ' ', (Smalltalk includesKey: s) printString; newLine].
out nextPutAll: (String canUnderstand: #isAllDigits) printString; newLine.
{ '0123' asNumber. '1a00' isAllDigits. '1000000000' asNumber }
