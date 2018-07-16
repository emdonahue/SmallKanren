printing
printOn: aStream
	aStream nextPutAll: 'reused '.
	numConsumed printOn: aStream.
	aStream nextPut: $/.
	cache size printOn: aStream.
	aStream nextPutAll: ': '.
	(state reify: argVars) printOn: aStream.