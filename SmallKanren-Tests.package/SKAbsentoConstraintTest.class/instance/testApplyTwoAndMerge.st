tests
testApplyTwoAndMerge
	"Tests that Exclusions can reduce."

	| s |
	s := ((x absento: 2) run: ((y absento: 1) run: SKSubstitution new)) unify: y with: x.
	self assertCollection: {s constraintAt: y. s constraintAt: x}
		hasSameElements: {no1, no2. satisfied}.