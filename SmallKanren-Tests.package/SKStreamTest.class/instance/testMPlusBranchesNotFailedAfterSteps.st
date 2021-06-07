debugging
testMPlusBranchesNotFailedAfterSteps
	| s |
	self skip.
	s := ((SKVar new carCdrIn: [ :a :d | SKGoal succeed ]) | (SKVar new carCdrIn: [ :a :d | SKVar new carCdrIn: [ :b :c | SKGoal fail ] ])) runtime.
	self assert: (s stream isKindOf: SKMPlus).
	self assert: ((s branchesNotFailedAfterSteps: 1) stream isKindOf: SKMPlus).
	self assert: ((s branchesNotFailedAfterSteps: 10) stream isKindOf: SKStateScheduled).