printing
printOn: aStream
	aStream
		nextPutAll: 'Tabled';		
		nextPut: $(.
		cacheKey printOn: aStream.
		aStream nextPut: Character space.
		stream class printOn: aStream.
		aStream nextPut: $).