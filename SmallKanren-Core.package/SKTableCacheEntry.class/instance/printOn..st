printing
printOn: aStream
	argv printOn: aStream.
	aStream nextPut: $:.
	pseudoCounts likelihood exp printOn: aStream.