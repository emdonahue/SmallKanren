composing
conjoinBranching: aGoal
	"Might make sense to make lazy take precedence in case it is not recursive."
	<todo>
	^ SKTwoBranchAnd new
		left: aGoal;
		right: self