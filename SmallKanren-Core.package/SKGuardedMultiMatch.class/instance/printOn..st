printing
printOn: aStream
	aStream nextPut: ${.
	externals printElementsOn: aStream.
	aStream nextPutAll: '} '.
	block printOn: aStream.