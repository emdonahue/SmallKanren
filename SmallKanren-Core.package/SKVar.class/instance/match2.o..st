matching
match2: aPattern o: aBlock
	^ (SKGuardedFreshSingle fromPattern: aPattern block: aBlock) asGoal: self.