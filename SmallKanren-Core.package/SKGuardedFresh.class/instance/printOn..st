printing
printOn: aStream
	super printOn: aStream.
	externals printOn: aStream.
	aStream nextPutAll: '==='.
	self pattern printOn: aStream.