running
step: aStream
	| s |
	s := aStream step: self.
	s == aStream ifTrue: [ ^ SKStream failure runtime: self ]. "If stream unchanged, tabling has found a fixed point."
	^ s runtime: self.