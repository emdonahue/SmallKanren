printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: '(| '.
	left printOn: aStream.
	aStream nextPut: Character space.
	right printOn: aStream.
	"self disjuncts do: [ :c | c printOn: aStream ] separatedBy: [ aStream nextPutAll: ' | ' ]."
	aStream nextPut: $)