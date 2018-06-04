debugging
testMPlusBranchesAliveAfterSteps
	| s |
	s := ((SKVar new carCdrIn: [ :a :d | SKGoal fail ]) | (SKVar new carCdrIn: [ :a :d | SKVar new carCdrIn: [ :b :c | SKGoal fail ] ])) runner stream.
	self assert: (s isKindOf: SKMPlus).
	self assert: ((s branchesAliveAfterSteps: 1) isKindOf: SKDelayed).
	self assert: (s branchesAliveAfterSteps: 10) isEmptyStream