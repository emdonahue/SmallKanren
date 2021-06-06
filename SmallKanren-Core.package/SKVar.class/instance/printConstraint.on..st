printing
printConstraint: aConstraint on: aStream
	aStream
		nextPut: $<;
		nextPutAll: self label;
		nextPut: Character space.
	aConstraint printOn: aStream.
	aStream nextPut: $>.