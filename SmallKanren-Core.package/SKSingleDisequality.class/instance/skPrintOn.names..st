printing
skPrintOn: aStream names: aVarNames
	| names |
	aStream nextPut: $(.
	names := left skPrintOn: aStream names: aVarNames.
	aStream nextPutAll: '=/='.
	names := right skPrintOn: aStream names: names.
	aStream nextPut: $).
	^ names