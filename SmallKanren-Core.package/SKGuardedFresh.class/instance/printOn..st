printing
printOn: aStream
	super printOn: aStream.
	var printOn: aStream.
	aStream nextPutAll: '==='.
	self pattern printOn: aStream.