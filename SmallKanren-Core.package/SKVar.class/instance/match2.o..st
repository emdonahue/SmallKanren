matching
match2: aPattern o: aBlock
	^ SKGuardedMatch fromPattern: aPattern var: self block: aBlock.