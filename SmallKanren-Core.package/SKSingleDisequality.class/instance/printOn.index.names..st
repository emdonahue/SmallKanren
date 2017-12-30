printing
printOn: aStream index: anInteger names: aVarNames
	aStream nextPut: $(.
	left skPrintOn: aStream names: aVarNames.
	aStream nextPutAll: '=/='.
	right skPrintOn: aStream names: aVarNames.
	aStream nextPut: $)