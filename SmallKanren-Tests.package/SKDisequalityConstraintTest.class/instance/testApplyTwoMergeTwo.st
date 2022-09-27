tests
testApplyTwoMergeTwo
	"Tests whether two DisjoinedDisequalities can merge."

	| s |
	s := (y =/= 2 run: (y =/= 1 run: (x =/= 3 run: (x =/= 4 run: SKSubstitution new)))) unify: y with: x.
	self assert: (s constraints at: y) equals: satisfied.
	self assert: (s constraints at: x) equals: (x =/= 1), (x =/= 2) , (x =/= 3) , (x =/= 4)