printing
printOn: aStream
	aStream nextPut: ${.
	super printOn: aStream.
	aStream nextPut: $&.
	^ rest printDisequalityConstraintsOn: aStream