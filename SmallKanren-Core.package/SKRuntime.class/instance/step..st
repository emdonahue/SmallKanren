running
step: aStream
	| s |
	<todo>
	[aStream isWaitingStream ifTrue: [ "If the stream might be at a fixed point,"
		s := aStream stepFixedPoint: self. "Attempt to step through the entire tree in sequence to check for fixedpoints."
		s == aStream ifTrue: [ ^ SKStream failure runtime: self ]].].
	"(aStream isAtTablingFixedPoint: self) ifTrue: [ ^ SKStream failure runtime: self ]."
	s := aStream step: self.
	s == aStream ifTrue: [ ^ SKStream failure runtime: self ].
	^ s runtime: self.