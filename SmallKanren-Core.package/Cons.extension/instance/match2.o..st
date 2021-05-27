*SmallKanren-Core
match2: aPattern o: aBlock
	^ ((SKGuardedPatternedFresh fromPattern: aPattern block: aBlock) runNow: self) asGoal.