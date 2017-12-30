composing
conjoinNonBranching: aGoal
	^ SKNonBranchingAnd new
		left: aGoal;
		right: self