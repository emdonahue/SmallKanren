printing
printRestOn: aStream
	aStream nextPutAll: ', '.
	left printOn: aStream.
	aStream nextPutAll: ' != '.
	right printOn: aStream.
	next printRestOn: aStream