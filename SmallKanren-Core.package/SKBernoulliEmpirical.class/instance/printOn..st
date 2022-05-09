printing
printOn: aStream
	aStream nextPutAll: 'Bernoulli('.
	ones exp printOn: aStream.
	aStream nextPut: $/.
	(self log: ones sum: zeroes) exp printOn: aStream.
	aStream nextPut: $).