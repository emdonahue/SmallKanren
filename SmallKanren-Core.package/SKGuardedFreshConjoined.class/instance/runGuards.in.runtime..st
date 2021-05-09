laziness
runGuards: aPattern in: aState runtime: aRuntime
	<todo> "Should see if first fails before running rest."
	^ (first runGuards: aPattern in: aState runtime: aRuntime) & (rest runGuards: aPattern in: aState runtime: aRuntime).