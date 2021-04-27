disjunction
testDisjoinedMerge
	"Tests that disjoined disequalities can merge with other disequaliteis on application."

	| state |
	state := (x =/= 3 run: (x =/= 2 run: (x =/= 1 run: SKState new))) unify: x with: y.
	self assert: (state constraints at: y) equals: y =/= 1, (y =/= 2), (y =/= 3).
	self assert: (state constraints at: x) equals: satisfied.