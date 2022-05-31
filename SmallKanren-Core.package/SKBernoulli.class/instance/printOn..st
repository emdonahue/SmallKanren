printing
printOn: aStream
	aStream nextPutAll: 'Bernoulli('.
	self p printOn: aStream.
	aStream nextPut: $).