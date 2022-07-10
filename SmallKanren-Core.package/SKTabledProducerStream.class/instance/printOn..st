printing
printOn: aStream
	aStream
		nextPutAll: 'Tabled';		
		nextPut: $(.
		inputs printOn: aStream.
		aStream nextPut: Character space.
		stream class printOn: aStream.
		aStream nextPut: $).