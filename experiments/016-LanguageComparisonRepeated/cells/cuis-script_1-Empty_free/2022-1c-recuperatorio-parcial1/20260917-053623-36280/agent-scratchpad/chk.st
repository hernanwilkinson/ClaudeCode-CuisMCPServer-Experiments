{ #(#DNI #CUIT #ZipCode #OldZipCode #NewZipCode #Identification #CustomerIdentification) select: [:n | Smalltalk includesKey: n].
  String canUnderstand: #isAllDigits. String canUnderstand: #allSatisfy: }
