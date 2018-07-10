printing
printOn: aStream
	aStream
		nextPut: $<;
		nextPutAll: self label;
		nextPut: $>.