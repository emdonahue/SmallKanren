printing
skPrintOn: aStream names: varNames
	| names |
	names := left skPrintOn: aStream names: varNames.
	aStream nextPutAll: '==='.
	^ right skPrintOn: aStream names: names