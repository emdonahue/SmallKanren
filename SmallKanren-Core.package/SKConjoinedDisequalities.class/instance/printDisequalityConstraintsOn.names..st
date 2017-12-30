printing
printDisequalityConstraintsOn: aStream names: aVarNames
	| names |
	names := super skPrintOn: aStream  names: aVarNames.
	aStream nextPut: $&.
	^ next printDisequalityConstraintsOn: aStream names: names