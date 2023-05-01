printing
printOn: aStream
	aStream nextPutAll: self className.
	aStream nextPut: $(.
	self pseudocounts likelihood printOn: aStream.
	aStream nextPut: $).