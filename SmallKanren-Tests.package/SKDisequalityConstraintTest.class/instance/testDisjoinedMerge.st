disjunction
testDisjoinedMerge
	"Tests that disjoined disequalities can merge with other disequaliteis on application."

	| state |
	state := (x =/= 3 run: (x =/= 2 run: (x =/= 1 run: SKSubstitution new))) unify: x with: y.
	self assert: (state constraints at: y) equals: (y =/= 1) asConstraint, (y =/= 2) asConstraint, (y =/= 3) asConstraint .
	self assert: (state constraints at: x) equals: satisfied.