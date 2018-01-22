tests
testOrReduces
	self assert: {{}} asGoal isFailure.
	self assert: {{(x === 1)}} asGoal isUnification.
	self
		assert:
			{{{{(x === 1).
			(x === 2)}}}} asGoal isDisjunction.
	self
		assert:
			{{{(x === 1).
			(x === 1)}}} asGoal isConjunction.
	self assert: {{(x === 1)}} asGoal isUnification