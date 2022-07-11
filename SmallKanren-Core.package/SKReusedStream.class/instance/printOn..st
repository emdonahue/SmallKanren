printing
printOn: aStream
	self class printOn: aStream.
	aStream nextPut: $(.
	table printOn: aStream.
	aStream nextPut: Character space.
	cacheKey printOn: aStream.
	aStream nextPut: Character space.
	consumed size printOn: aStream.
	aStream nextPut: $).