printing
printOn: aStream
	aStream nextPut: $&.
	left printOn: aStream.
	aStream nextPutAll: '=/='.
	right printOn: aStream.