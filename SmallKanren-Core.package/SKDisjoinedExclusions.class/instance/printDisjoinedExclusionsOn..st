printing
printDisjoinedExclusionsOn: aStream
 excluded printOn: aStream.
	aStream nextPut: $,.
	next printDisjoinedExclusionsOn: aStream