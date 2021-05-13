printing
printOn: aStream
	aStream nextPut: $+.
	summand printOn: aStream.
	aStream nextPut: $=.
	sum printOn: aStream.