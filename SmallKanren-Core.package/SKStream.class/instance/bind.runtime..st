streaming
bind: aGoal runtime: aRunner
	<todo> "Remove mplus passthrough."
	^ SKBind new
		goal: aGoal;
		stream: self.