printing
printOn: aStream
	aStream nextPutAll: 'excludes: '.
	excluded printOn: aStream