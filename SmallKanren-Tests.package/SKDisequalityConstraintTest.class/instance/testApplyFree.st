tests
testApplyFree
	"Constraining two free variables should apply the constraint to both in the Store, since a change to either should implicitly run constraints on both."

	| s |
	s := x =/= y run: SKState new.
	self assert: (s constraints at: y) equals: (y =/= x) asConstraint.
	self assert: (s constraints at: x) equals: (x =/= y) asConstraint