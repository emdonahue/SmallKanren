printing
printOn: aStream
	aStream nextPutAll: 'aState'.
	jointDistribution ifNotNil: [ 
		aStream nextPut: $(.
		self likelihood exp printOn: aStream.
		aStream nextPut: $). ].