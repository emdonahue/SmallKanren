printing
printOn: aStream
	aStream nextPut: $(.
	self conjuncts do: [ :c | c printOn: aStream ] separatedBy: [ aStream nextPutAll: ' & ' ].
	aStream nextPut: $)