tests
testApplyTwoMergeWithTwo
	"Tests that DisjoinedExclusions can reduce."

	| s |
	s := ((x excludes: 3) run: ((x excludes: 4) run: ((y excludes: 1) run: ((y excludes: 2) run: SKState new)))) unify: y with: x.
	self assert: (s constraints at: x) equals: no4, no3, no1, no2.
	self assert: (s constraints at: y) equals: satisfied.