printing
printOn: aStream
	aStream nextPutAll: self className.
	aStream nextPut: $(.
	self pseudocounts likelihood exp printOn: aStream.
	aStream nextPut: $).