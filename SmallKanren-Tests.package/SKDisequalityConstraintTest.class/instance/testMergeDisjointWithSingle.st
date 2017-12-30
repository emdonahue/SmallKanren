tests-merging
testMergeDisjointWithSingle
	"Tests merging disequalities into a disjoined disequality."

	| diseq |
	diseq := ((x =/= 2) asConstraint disequality: (x =/= 3) asConstraint) disequality: (x =/= 1) asConstraint.
	self assert: diseq first equals: (x =/= 1) asConstraint.
	self assert: diseq rest first equals: (x =/= 2) asConstraint.
	self assert: diseq rest rest first equals: (x =/= 3) asConstraint