converting
asGoal: aVar 	
	var := aVar.
	^ SKGuardedFreshGoal new var: aVar; fresh: self.