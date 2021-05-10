matching
match2: aPattern o: aBlock
	^ (SKGuardedFresh fromPattern: aPattern block: aBlock) asGoal: self.