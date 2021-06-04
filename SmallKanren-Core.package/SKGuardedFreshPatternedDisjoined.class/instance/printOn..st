printing
printOn: aStream
	(clauses collect: [ :c | c tag ]) printOn: aStream.
	aStream nextPut: Character space.
	var printOn: aStream.
	aStream nextPutAll: '==='.
	self pattern printOn: aStream.