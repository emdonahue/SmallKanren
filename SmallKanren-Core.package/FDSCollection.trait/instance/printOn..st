printing
printOn: aStream
	aStream nextPut: $(.
	self do: [ :e | e printOn: aStream ] separatedBy: [ aStream nextPut: Character space ].
	aStream nextPut: $).