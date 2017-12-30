printing
printDisequalityListOn: aStream names: aVarNames
	| names |
	names := constraint skPrintOn: aStream  names: aVarNames.
	aStream nextPutAll: ' | '.
	^ next printDisequalityListOn: aStream names: names