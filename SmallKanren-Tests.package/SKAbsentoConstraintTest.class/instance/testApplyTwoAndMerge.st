tests
testApplyTwoAndMerge
	"Tests that Exclusions can reduce."

	| s |
	s := ((x excludes: 2) run: ((y excludes: 1) run: SKState new)) unify: y with: x.
	self assert: (s constraints at: x) equals: (x excludes: 1) , (x excludes: 2).
	self assert: (s constraints at: y) equals: SKSatisfiedConstraint singleton