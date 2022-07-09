printing
printOn: aStream
	aStream nextPutAll: 'Bind('.
	stream printOn: aStream.
	aStream nextPut: $).