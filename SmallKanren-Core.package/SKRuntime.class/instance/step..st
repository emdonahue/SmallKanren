running
step: aStream
	| s |
	s := aStream step: self.
	s == aStream ifTrue: [ ^ SKStream failure runtime: self ].
	^ s runtime: self.