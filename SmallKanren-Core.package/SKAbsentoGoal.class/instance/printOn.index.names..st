printing
printOn: aStream index: anInteger names: aSKVarNames
	var skPrintOn: aStream names: aSKVarNames .
	aStream nextPutAll: 'excludes: '.
	excluded printOn: aStream