printing
printOn: aStream
	aStream nextPutAll: '(& '.
	self conjuncts do: [ :c | c printOn: aStream ] separatedBy: [ aStream nextPut: Character space ].
	aStream nextPut: $)