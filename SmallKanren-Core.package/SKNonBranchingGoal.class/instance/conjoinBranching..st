composing
conjoinBranching: aGoal
	^ SKOneBranchAnd new
		conjunctions: self;
		disjunction: aGoal