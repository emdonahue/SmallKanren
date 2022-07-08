streaming
bind: aGoal runtime: aRunner
	^ SKBind new
		goal: aGoal;
		stream: self.