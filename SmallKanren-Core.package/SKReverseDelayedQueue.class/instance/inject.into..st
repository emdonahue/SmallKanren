enumerating
inject: anAccumulator into: aBlock
	^ reverse inject: (forward inject: anAccumulator into: aBlock) into: aBlock