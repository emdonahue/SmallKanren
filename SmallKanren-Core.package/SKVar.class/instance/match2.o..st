matching
match2: aPattern o: aBlock
	^ SKGuardedPatternedFresh fromPattern: aPattern var: self block: aBlock.