tests
testReduceToExclusionDisequality
	self assert: ((((x absento: 2) run: (x =/= 1 cons run: SKState new)) unify: x with: y cons) constraints at: y) equals: (y absento: 2) asConstraint & (y =/= 1)