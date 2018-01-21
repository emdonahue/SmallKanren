composing
conjoinBranching: aGoal
	^ SKAnd new
		left: self;
		right: aGoal