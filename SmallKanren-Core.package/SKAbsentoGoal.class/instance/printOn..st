printing
printOn: aStream
	var printOn: aStream.
	aStream nextPutAll: ' excludes: '.
	excluded printOn: aStream