tests
testApplyTwoMergeTwo
	"Tests whether two DisjoinedDisequalities can merge."

	| s |
	s := (y =/= 3 run: (y =/= 4 run: (x =/= 2 run: (x =/= 1 run: SKState new)))) unify: y with: x.
	self assert: (s constraints at: y) equals: SKSatisfiedConstraint singleton.
	self assert: (s constraints at: x) equals: x =/= 1 , (x =/= 2) , (x =/= 3) , (x =/= 4)