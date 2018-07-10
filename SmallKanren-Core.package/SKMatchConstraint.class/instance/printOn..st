printing
printOn: aStream
	delayedVar printOn: aStream.
	aStream nextPutAll: '==='.
	pattern printOn: aStream.