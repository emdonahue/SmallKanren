printing
printOn: aStream
	aStream nextPutAll: 'Normal('.
	self mean exp printOn: aStream.
	aStream nextPut: $,.
	self std exp printOn: aStream.
	aStream nextPut: $).