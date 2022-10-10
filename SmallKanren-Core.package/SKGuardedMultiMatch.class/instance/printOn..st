printing
printOn: aStream
	"tag ifNotNil: [ aStream nextPut: $#; nextPutAll: tag; nextPut: Character space ]."
	"aStream nextPut: ${."
	externals printElementsOn: aStream.
	"aStream nextPutAll: '} {'."
	values ifNotNil: [ values printElementsOn: aStream ].
	aStream nextPutAll: ' '.
	block printOn: aStream.