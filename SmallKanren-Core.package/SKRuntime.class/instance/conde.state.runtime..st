streams
conde: aGoal state: aState runtime: aRuntime
	^ (aGoal run: aState runtime: self) + stream.