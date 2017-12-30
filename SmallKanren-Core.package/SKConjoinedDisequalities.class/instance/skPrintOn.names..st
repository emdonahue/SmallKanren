printing
skPrintOn: aStream  names: aVarNames
	| names |
	aStream nextPut: $(.
	names := super skPrintOn: aStream names: aVarNames.
	aStream nextPut: $&.
	^ next printDisequalityConstraintsOn: aStream names: names