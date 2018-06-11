debugging
testMPlusBranchesNotFailedAfterSteps
	| s |
	s := ((SKVar new carCdrIn: [ :a :d | SKGoal succeed ]) | (SKVar new carCdrIn: [ :a :d | SKVar new carCdrIn: [ :b :c | SKGoal fail ] ])) runner.
	self assert: (s stream isKindOf: SKMPlus).
	self assert: ((s branchesNotFailedAfterSteps: 1) stream isKindOf: SKMPlus).
	self assert: ((s branchesNotFailedAfterSteps: 10) stream isKindOf: SKDelayed).