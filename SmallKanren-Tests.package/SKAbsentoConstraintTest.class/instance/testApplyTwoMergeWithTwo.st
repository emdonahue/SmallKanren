tests
testApplyTwoMergeWithTwo
	"Tests that DisjoinedExclusions can reduce."

	| s |
	s := ((x absento: 3) run: ((x absento: 4) run: ((y absento: 1) run: ((y absento: 2) run: SKSubstitution new)))) unify: y with: x.
	self assertCollection: {s constraintAt: x. s constraintAt: y}
		hasSameElements: {no2, no1, no3, no4. satisfied}.