tests
testEmptyConstraint
	"The store is non empty, but it does not have an entry at x, so that constraint slot is empty."

	| s |
	s := y =/= 2 run: (x =/= 1 run: SKSubstitution new).
	self assert: (s constraintAt: y) equals: (y =/= 2) asConstraint.
	self assert: (s constraintAt: x) equals: (x =/= 1) asConstraint