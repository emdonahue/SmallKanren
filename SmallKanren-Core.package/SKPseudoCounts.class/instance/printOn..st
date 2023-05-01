printing
printOn: aStream
	aStream nextPutAll: self className.
	aStream nextPut: $(.
	self likelihood exp printOn: aStream.
	aStream nextPut: $).
	