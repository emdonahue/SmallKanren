tabling
ifFixedPoint: steppedStream return: mplusStream elsePlus: fixedStream 
	self == steppedStream ifTrue: [ ^ mplusStream ].
	^ fixedStream + self.