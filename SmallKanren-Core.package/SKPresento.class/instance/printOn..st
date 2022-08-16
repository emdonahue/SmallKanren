printing
printOn: aStream
	aStream nextPutAll: 'presento('.
	term printOn: aStream.
	aStream nextPut: $).