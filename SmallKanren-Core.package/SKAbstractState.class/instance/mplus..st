streaming
mplus: aStream
	self isIncomplete ifFalse: [ ^ aStream complete: self ].
	^ super mplus: aStream.