printing
printOn: aStream
	aStream nextPutAll: '(| '.
	clauses do: [ :c | c printOn: aStream ] separatedBy: [ aStream nextPut: Character space ].
	aStream nextPut: $).