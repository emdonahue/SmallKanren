printing
printOn: aStream
	aStream nextPutAll: 'sample('.
	term printOn: aStream.
	aStream nextPut: $).