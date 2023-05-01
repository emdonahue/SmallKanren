printing
printOn: aStream
	aStream nextPutAll: self className.
	(statistics collect: #exp) printOn: aStream.