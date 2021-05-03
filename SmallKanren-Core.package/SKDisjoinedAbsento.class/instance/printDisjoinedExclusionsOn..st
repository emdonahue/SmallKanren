printing
printDisjoinedExclusionsOn: aStream
 absent printOn: aStream.
	aStream nextPut: $,.
	rest printDisjoinedExclusionsOn: aStream