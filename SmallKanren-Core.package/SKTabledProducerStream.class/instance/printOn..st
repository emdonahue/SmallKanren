printing
printOn: aStream
	aStream
		nextPutAll: 'Producer ';
		nextPutAll: cache size asString;
		
		nextPut: $(.
		cacheKey printOn: aStream.
		aStream nextPut: $).