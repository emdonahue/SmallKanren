tests-merging
testMergeSingle
	"Tests merging disequalities into a disjoined disequality."

	self assert: ((x =/= 1) asConstraint disequality: (x =/= 2) asConstraint) first equals: (x =/= 1) asConstraint.