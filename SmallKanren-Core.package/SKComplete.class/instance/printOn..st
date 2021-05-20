printing
printOn: aStream
	self countAnswers printOn: aStream.
	aStream nextPutAll: ' answers'.