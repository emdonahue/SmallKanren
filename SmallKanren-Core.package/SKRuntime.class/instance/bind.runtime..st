streaming
bind: aGoal runtime: aRuntime
	^ (stream bind: aGoal runtime: self) runtime: self.