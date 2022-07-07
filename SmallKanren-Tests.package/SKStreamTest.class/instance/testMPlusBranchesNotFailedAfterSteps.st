tests-debugging
testMPlusBranchesNotFailedAfterSteps
	| s |
	self skip.
	s := ((SKVar new carCdro: [ :a :d | SKGoal succeed ]) | (SKVar new carCdro: [ :a :d | SKVar new carCdro: [ :b :c | SKGoal fail ] ])) runtime.
	self assert: (s stream isKindOf: SKMPlus).
	self assert: ((s branchesNotFailedAfterSteps: 1) stream isKindOf: SKMPlus).
	self assert: ((s branchesNotFailedAfterSteps: 10) stream isKindOf: SKStateScheduled).