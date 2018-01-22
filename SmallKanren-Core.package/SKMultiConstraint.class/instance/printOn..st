printing
printOn: aStream
	type printOn: aStream .
	aStream nextPutAll: ' & '.
	disequality printOn: aStream.
	aStream nextPutAll: ' & '.
	exclusion printOn: aStream