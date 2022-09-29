tests
testApplyTwoMergeTwo
	"Tests whether two DisjoinedDisequalities can merge."

	| s |
	s := (y =/= 2 run: (y =/= 1 run: (x =/= 3 run: (x =/= 4 run: SKSubstitution new)))) unify: y with: x.
	self assertCollection:{s constraints at: y. s constraints at: x}
		hasSameElements: {satisfied.  (x =/= 4), (x =/= 3) , (x =/= 2) , (x =/= 1)}