tests-merging
testMergeDisjoint
	"Tests merging disequalities into a disjoined disequality."

	| diseq |
	diseq := ((x =/= 3) asConstraint disequality: (x =/= 4) asConstraint) disequality: ((x =/= 1) asConstraint disequality: (x =/= 2) asConstraint).
	self assert: diseq first equals: (x =/= 1) asConstraint.
	self assert: diseq rest first equals: (x =/= 2) asConstraint.
	self assert: diseq rest rest first equals: (x =/= 3) asConstraint.
	self assert: diseq rest rest rest first equals: (x =/= 4) asConstraint