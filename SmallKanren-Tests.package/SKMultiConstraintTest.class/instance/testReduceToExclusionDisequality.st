tests
testReduceToExclusionDisequality
	self assert: ((((x excludes: 2) run: (x =/= 1 cons run: SKState new)) unify: x with: y cons) constraints at: y) equals: (y excludes: 2) asConstraint & (y =/= 1)