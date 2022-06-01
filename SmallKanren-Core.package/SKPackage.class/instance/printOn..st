printing
printOn: aStream
	aStream nextPutAll: 'aState'.
	pseudocounts ifNotNil: [ 
		aStream nextPut: $(.
		self likelihood exp printOn: aStream.
		aStream nextPut: $). ].