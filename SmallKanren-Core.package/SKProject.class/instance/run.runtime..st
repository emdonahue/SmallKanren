running
run: aState runtime: aRuntime
	^ (block cull: var cull: aState cull: aRuntime) asGoal run: aState runtime: aRuntime.