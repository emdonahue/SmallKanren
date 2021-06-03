printing
printOn: aStream
	(clauses collect: [ :c | c tag ]) printOn: aStream.
	aStream nextPut: Character space.
	var printOn: aStream.
	aStream nextPutAll: '==='.
	(clauses collect: [ :c | c tag ]) printOn: aStream.