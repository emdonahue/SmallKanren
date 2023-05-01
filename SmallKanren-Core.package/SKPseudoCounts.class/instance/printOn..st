printing
printOn: aStream
	aStream nextPutAll: self className.
	aStream nextPut: $(.
	self likelihood printOn: aStream.
	aStream nextPut: $).
	