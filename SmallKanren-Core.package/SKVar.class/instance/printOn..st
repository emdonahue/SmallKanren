printing
printOn: aStream
	aStream
		nextPut: $<;
		nextPutAll: self tagString;
		nextPutAll: (self hash asString copyFrom: 1 to: 4);
		nextPut: $>