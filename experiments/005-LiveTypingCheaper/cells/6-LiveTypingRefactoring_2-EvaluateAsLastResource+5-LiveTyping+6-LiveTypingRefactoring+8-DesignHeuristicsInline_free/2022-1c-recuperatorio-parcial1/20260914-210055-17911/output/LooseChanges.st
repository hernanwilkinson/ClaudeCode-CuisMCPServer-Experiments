!String methodsFor: #'*CustomerImporter'!
hasOnlyDigits

	^self allSatisfy: [ :aCharacter | aCharacter isDigit ]! !

!String methodsFor: #'*CustomerImporter'!
hasOnlyLetters

	^self allSatisfy: [ :aCharacter | aCharacter isLetter ]! !

