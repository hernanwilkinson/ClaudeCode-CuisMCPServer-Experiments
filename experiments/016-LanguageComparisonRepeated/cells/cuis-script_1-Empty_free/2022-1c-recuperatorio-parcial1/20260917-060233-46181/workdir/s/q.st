StdIOWriteStream stdout nextPutAll: ((String allSelectors select: [:s| (s asString includesSubString: 'igit') or: [(s asString includesSubString: 'etter')]]) asArray printString); newLine.
StdIOWriteStream stdout nextPutAll: ('1234' isAllDigits) printString; newLine.
nil
