printing
skPrintOn: aStream names: varNames
	| names |
	names := var skPrintOn: aStream names: varNames.
	aStream nextPutAll: ' isSymbol'.
	^ names