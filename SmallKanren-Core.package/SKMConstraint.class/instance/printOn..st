printing
printOn: aStream
	first printOn: aStream.
	aStream nextPutAll: ' '.
	^ rest printOn: aStream.