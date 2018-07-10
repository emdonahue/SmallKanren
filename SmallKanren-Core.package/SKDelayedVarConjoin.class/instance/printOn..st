printing
printOn: aStream
	aStream
		nextPut: $<;
		nextPutAll: self var label;
		nextPutAll: ':#';
		nextPutAll: self size asString;
		nextPutAll: '>'.