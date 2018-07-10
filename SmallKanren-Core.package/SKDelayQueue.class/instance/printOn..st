printing
printOn: aStream
	| fencepost |
	fencepost := false.
	aStream nextPut: $(.
	self
		do: [ :v | 
			fencepost
				ifTrue: [ aStream space ].
			v printOn: aStream.
			fencepost := true ].
	aStream nextPut: $).