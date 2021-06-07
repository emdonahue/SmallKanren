debugging
testMPlusBranchesAliveAfterSteps
	| s |
	self skip.
	s := ((SKVar new carCdrIn: [ :a :d | SKGoal fail ]) | (SKVar new carCdrIn: [ :a :d | SKVar new carCdrIn: [ :b :c | SKGoal fail ] ])) runtime .
	self assert: (s stream isKindOf: SKMPlus).
	self assert: ((s branchesAliveAfterSteps: 1) stream isKindOf: SKStateScheduled).
	self assert: (s branchesAliveAfterSteps: 10) stream isFailure