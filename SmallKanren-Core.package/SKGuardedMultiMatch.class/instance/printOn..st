printing
printOn: aStream
	tag ifNotNil: [ aStream nextPut: $#; nextPutAll: tag; nextPut: Character space ].
	aStream nextPut: ${.
	var printElementsOn: aStream.
	aStream nextPutAll: '} {'.
	vals printElementsOn: aStream.
	aStream nextPutAll: '} '.
	block printOn: aStream.