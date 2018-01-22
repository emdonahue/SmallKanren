printing
printDisequalityConstraintsOn: aStream 
	super printOn: aStream.
	aStream nextPut: $&.
	next printDisequalityConstraintsOn: aStream