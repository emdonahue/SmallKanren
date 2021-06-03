scheduling
groundGoal: aVal
	<todo> "only needed if we need to check again for walked values. if just using the pattern, we already checked it."
	^ (aVal car: car cdro: block) asGoal.