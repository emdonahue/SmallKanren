*SmallKanren-Core
match2: aPattern o: aBlock
	^ ((SKGuardedFreshSingle fromPattern: aPattern block: aBlock) runNow: self) asGoal.