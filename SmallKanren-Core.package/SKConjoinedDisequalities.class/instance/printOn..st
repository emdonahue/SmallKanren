printing
printOn: aStream 
	aStream nextPut: $(.
	super printOn: aStream.
	aStream nextPut: $&.
	^ next printDisequalityConstraintsOn: aStream 