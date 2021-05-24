printing
printOn: aStream
	aStream nextPutAll: 'ProducerBind ('.
	self cacheKey printOn: aStream.
	aStream nextPut: $).