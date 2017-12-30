printing
skPrintOn: aStream names: varNames
	| names |
	aStream nextPutAll: '(delay '.
	names := var skPrintOn: aStream names: varNames.
	aStream nextPut: $).
	^ names