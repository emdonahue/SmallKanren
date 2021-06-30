*SmallKanren-Core
match: aPattern o: aBlock
	^ SKGuardedMultiMatch externals: self pattern: aPattern block: aBlock.