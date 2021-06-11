*SmallKanren-Core
match: aPattern o: aBlock
	^ (SKGuardedMultiMatch fromPattern: aPattern block: aBlock) asGoal: self.