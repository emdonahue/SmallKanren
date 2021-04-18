printing
printDisequalityConstraintsOn: aStream 
	super printOn: aStream.
	aStream nextPut: $&.
	rest printDisequalityConstraintsOn: aStream