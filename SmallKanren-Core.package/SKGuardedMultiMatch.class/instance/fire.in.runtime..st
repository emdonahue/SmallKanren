laziness
fire: someVals in: aState runtime: aRuntime
	^ (self groundGoal: someVals asCons) run: aState runtime: aRuntime.
	