tests
testApplyTwoMergeWithTwo
	"Tests that DisjoinedExclusions can reduce."

	| s |
	s := ((x absento: 3) run: ((x absento: 4) run: ((y absento: 1) run: ((y absento: 2) run: SKState new)))) unify: y with: x.
	self assert: (s constraints at: x) equals: no4, no3, no1, no2.
	self assert: (s constraints at: y) equals: satisfied.