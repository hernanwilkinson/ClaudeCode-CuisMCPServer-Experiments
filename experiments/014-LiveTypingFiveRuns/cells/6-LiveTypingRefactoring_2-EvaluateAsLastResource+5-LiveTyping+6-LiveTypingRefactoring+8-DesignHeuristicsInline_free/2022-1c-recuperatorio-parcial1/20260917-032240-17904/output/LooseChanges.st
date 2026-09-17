!CharacterSequence methodsFor: #'*CustomerImporter'!
isAllDigits

	^self allSatisfy: [ :aCharacter | aCharacter isDigit ]! !

!CharacterSequence methodsFor: #'*CustomerImporter'!
isAllLetters

	^self allSatisfy: [ :aCharacter | aCharacter isLetter ]! !

