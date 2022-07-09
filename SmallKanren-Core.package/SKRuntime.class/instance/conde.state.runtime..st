streaming-mplus
conde: aGoal state: aState runtime: aRuntime
	^ ((aGoal run: aState runtime: self) + stream) runtime: self.