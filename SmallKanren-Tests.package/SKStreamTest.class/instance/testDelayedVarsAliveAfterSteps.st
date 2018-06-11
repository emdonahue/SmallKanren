debugging
testDelayedVarsAliveAfterSteps
	| s |
	s := ((SKVar new carCdrIn: [ :a :d | SKGoal fail ]) & (SKVar new carCdrIn: [ :a :d | SKVar new carCdrIn: [ :b :c | SKGoal fail ] ])) runner .
	self assert: (s stream isKindOf: SKDelayed).
	self assert: (s  branchesAliveAfterSteps: 1) stream suspendedVars size equals: 1.	"Runner has already expanded at least one on startup"
	self assert: (s branchesAliveAfterSteps: 10) stream isEmptyStream