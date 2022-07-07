printing
printOn: aStream
	self class printOn: aStream.
	aStream nextPut: $(.
	table printOn: aStream.
	aStream nextPut: Character space.
	cache printOn: aStream.
	aStream nextPut: $).