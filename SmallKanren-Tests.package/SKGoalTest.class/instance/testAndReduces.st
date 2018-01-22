tests
testAndReduces
	self assert: {} asGoal isSuccess.
	self assert: ({(x === 1)} asGoal isKindOf: SKUnification).
	self
		assert:
			{{(x === 1).
			(x === 2)}} asGoal isDisjunction.
	self
		assert:
			{{(x === 1).
			(x === 1)} asGoal} asGoal isConjunction.
	self assert: {{(x === 1)} asGoal} asGoal isUnification