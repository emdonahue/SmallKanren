printing
printOn: aStream
	aStream nextPut: ${.
	domain do: [ :x | x printOn: aStream ] separatedBy: [ aStream nextPut: Character space ].
	aStream nextPut: $}.