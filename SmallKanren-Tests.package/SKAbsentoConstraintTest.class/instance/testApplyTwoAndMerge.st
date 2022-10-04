tests
testApplyTwoAndMerge
	"Tests that Exclusions can reduce."

	| s |
	s := ((x absento: 2) run: ((y absento: 1) run: SKSubstitution new)) unify: y with: x.
	self assert: (s constraintAt: y) equals: no1, no2.
	self assert: (s constraintAt: x) equals: satisfied.