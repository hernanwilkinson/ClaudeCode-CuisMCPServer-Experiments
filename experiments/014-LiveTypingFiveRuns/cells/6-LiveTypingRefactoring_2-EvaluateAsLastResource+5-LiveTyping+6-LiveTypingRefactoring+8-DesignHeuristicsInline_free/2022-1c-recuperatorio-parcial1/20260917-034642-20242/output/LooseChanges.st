!String methodsFor: #'*CustomerImporter'!
isAllDigits

	^self allSatisfy: [ :aCharacter | aCharacter isDigit ]! !

!String methodsFor: #'*CustomerImporter'!
isAllLetters

	^self allSatisfy: [ :aCharacter | aCharacter isLetter ]! !

