running
step: aStream
	(aStream isAtTablingFixedPoint: self) ifTrue: [ ^ SKStream failure runtime: self ].
	^ (aStream step: self) runtime: self.