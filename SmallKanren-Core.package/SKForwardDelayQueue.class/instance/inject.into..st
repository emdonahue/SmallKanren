enumerating
inject: anAccumulator into: aBlock
	^ rest inject: (aBlock value: anAccumulator value: first) into: aBlock