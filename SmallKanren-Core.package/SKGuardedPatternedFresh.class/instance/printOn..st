printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: Character space.
	aStream nextPutAll: (block asString copyReplaceAll: {Character cr} with: {Character space}).