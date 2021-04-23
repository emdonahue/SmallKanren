tests
testApplyTwoMergeWithTwo
	"Tests that DisjoinedExclusions can reduce."

	| s |
	s := ((x excludes: 1) run: ((x excludes: 2) run: ((y excludes: 4) run: ((y excludes: 3) run: SKState new)))) unify: y with: x.
	self assert: (s constraints at: x) equals: (x excludes: 4) ,, (x excludes: 3) ,, (x excludes: 1) asConstraint ,, (x excludes: 2) asConstraint.
	self assert: (s constraints at: y) equals: SKSatisfiedConstraint singleton