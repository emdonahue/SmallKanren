matching
match: aPattern o: aBlock
	^ SKGuardedMatch fromPattern: aPattern var: self block: aBlock.