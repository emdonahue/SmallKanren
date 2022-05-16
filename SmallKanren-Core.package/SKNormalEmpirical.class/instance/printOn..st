printing
printOn: aStream
	aStream nextPutAll: 'Normal('.
	x exp printOn: aStream.
	aStream nextPut: $/.
	n exp printOn: aStream.
	aStream nextPut: $).