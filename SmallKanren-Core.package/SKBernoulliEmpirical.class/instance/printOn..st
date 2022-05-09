printing
printOn: aStream
	aStream nextPutAll: 'Bernoulli('.
	(ones ifNil: Float negativeInfinity) exp printOn: aStream.
	aStream nextPut: $/.
	(self log: (ones ifNil: Float negativeInfinity) sum: (zeroes ifNil: Float negativeInfinity)) exp printOn: aStream.
	aStream nextPut: $).