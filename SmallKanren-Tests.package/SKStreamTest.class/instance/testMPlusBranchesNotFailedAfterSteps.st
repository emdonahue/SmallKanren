debugging
testMPlusBranchesNotFailedAfterSteps
	| s |
	s := ((SKVar new carCdrIn: [ :a :d | SKGoal succeed ]) | (SKVar new carCdrIn: [ :a :d | SKVar new carCdrIn: [ :b :c | SKGoal fail ] ])) runner stream.
	self assert: (s isKindOf: SKMPlus).
	self assert: ((s branchesNotFailedAfterSteps: 1) isKindOf: SKMPlus).
	self assert: ((s branchesNotFailedAfterSteps: 10) isKindOf: SKDelayed).