printing
printOn: aStream
	argv printOn: aStream.
	pseudoCounts likelihood isZero ifFalse: [
		aStream nextPut: $:.
		pseudoCounts likelihood exp printOn: aStream.]