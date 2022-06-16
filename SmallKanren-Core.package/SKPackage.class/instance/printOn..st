printing
printOn: aStream
	aStream nextPutAll: self class asString.
	pseudocounts ifNotNil: [ 
		aStream nextPut: $(.
		self likelihood exp printOn: aStream.
		aStream nextPut: $). ].