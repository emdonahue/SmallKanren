printing
printDisjoinedExclusionsOn: aStream names: varNames
	| names |
	names := excluded skPrintOn: aStream names: varNames.
	aStream nextPut: $,.
	^ next printDisjoinedExclusionsOn: aStream names: names