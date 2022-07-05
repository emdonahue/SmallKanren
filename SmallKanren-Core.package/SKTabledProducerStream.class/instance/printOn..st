printing
printOn: aStream
	aStream
		nextPutAll: 'Tabled';		
		nextPut: $(.
		stream class printOn: aStream.
		aStream nextPut: $).