scheduling
groundGoal: aVal
	<todo> "only needed if we need to check again for walked values. if just using the pattern, we already checked it."
	self halt.
	^ (aVal car: car cdro: block) asGoal.