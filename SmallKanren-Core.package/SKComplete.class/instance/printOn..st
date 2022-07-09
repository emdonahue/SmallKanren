printing
printOn: aStream
	aStream nextPutAll: 'Complete('.
	self countAnswers printOn: aStream.
	aStream nextPut: $).