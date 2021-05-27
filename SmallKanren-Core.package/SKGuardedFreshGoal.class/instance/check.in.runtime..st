scheduling
check: aVal in: aState runtime: aRuntime
	^ (self groundGoal: aVal) run: aState runtime: aRuntime.