tests
testApplyFree
	"Constraining two free variables should apply the constraint to both in the Store, since a change to either should implicitly run constraints on both."

	| s |
	s := x =/= y run: SKSubstitution new.
	self assert: (s constraintAt: y) equals: (y =/= x) asConstraint.
	self assert: (s constraintAt: x) equals: (x =/= y) asConstraint