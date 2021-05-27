matching
match2: aPattern o: aBlock
	^ (SKGuardedPatternedFresh fromPattern: aPattern block: aBlock) asGoal: self.