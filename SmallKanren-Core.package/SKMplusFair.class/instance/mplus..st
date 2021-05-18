streaming
mplus: aStream
	self halt.
	^ self class new streams: (streams add: aStream).