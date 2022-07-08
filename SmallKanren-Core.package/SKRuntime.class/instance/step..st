running
step: aStream
	(aStream waitCheck: self) ifTrue: [ ^ SKStream failure runtime: self ].
	^ (aStream step: self) runtime: self.