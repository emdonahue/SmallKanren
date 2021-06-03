printing
printOn: aStream
	tag ifNotNil: [ aStream nextPutAll: tag; nextPut: Character space ].