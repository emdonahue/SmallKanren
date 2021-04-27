tests
testApplyTwoAndMerge
	"Tests that Exclusions can reduce."

	| s |
	s := ((x excludes: 2) run: ((y excludes: 1) run: SKState new)) unify: y with: x.
	self assert: (s constraints at: x) equals: no1, no2.
	self assert: (s constraints at: y) equals: satisfied.