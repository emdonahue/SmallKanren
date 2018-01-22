printing
printOn: aStream
	aStream nextPut: $<; nextPutAll: self tagString.
	self hash printOn: aStream.
	aStream nextPut: $>