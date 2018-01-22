printing
printOn: aStream
	aStream nextPut: $(.
	self disjuncts do: [ :c | c printOn: aStream ] separatedBy: [ aStream nextPutAll: ' | ' ].
	aStream nextPut: $)