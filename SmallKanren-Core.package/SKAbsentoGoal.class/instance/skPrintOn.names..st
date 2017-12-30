printing
skPrintOn: aStream names: aSKVarNames
	| names |
	names := var skPrintOn: aStream names: aSKVarNames.
	aStream nextPutAll: ' excludes: '.
	^ excluded skPrintOn: aStream names: names