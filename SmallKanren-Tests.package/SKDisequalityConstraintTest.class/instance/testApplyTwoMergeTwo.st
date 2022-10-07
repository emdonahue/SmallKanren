tests
testApplyTwoMergeTwo
	"Tests whether two DisjoinedDisequalities can merge."

	| s |
	s := (y =/= 2 run: (y =/= 1 run: (x =/= 3 run: (x =/= 4 run: SKSubstitution new)))) unify: y with: x.
	self assertCollection:{s constraintAt: y. s constraintAt: x}
		hasSameElements: {satisfied.  (x =/= 1), (x =/= 2) , (x =/= 3) , (x =/= 4)}