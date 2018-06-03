debugging
testBranchesAliveAfterSteps
	| s |
	s := ((SKVar new carCdrIn: [ :a :d | SKVar new carCdrIn: [ :b :c | SKGoal fail ] ])
		& (SKVar new carCdrIn: [ :a :d | SKVar new carCdrIn: [ :b :c | SKGoal fail ] ])) runner stream.
	self assert: (s isKindOf: SKDelayed).
	self assert: (s branchesAliveAfterSteps: 2) suspendedVars size equals: 1.
	self assert: (s branchesAliveAfterSteps: 1) suspendedVars isEmpty.