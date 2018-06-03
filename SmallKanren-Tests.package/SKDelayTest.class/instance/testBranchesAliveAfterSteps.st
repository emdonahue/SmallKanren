debugging
testBranchesAliveAfterSteps
	| s |
	s := ((SKVar new carCdrIn: [ :a :d | SKGoal fail ]) & (SKVar new carCdrIn: [ :a :d | SKVar new carCdrIn: [ :b :c | SKGoal fail ] ])) runner stream.
	self assert: (s isKindOf: SKDelayed).
	self assert: (s branchesAliveAfterSteps: 1) suspendedVars size equals: 1.	"Runner has already expanded at least one on startup"
	self assert: (s branchesAliveAfterSteps: 10) isEmptyStream