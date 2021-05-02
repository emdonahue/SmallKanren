tests
testNoMutation
	"Tests that MultiConstraints are copied before assignments are made."

	| c s s2 |
	s := (x absento: 2) run: (x =/= 1 run: (x isNumbero run: SKState new)).
	c := s constraints at: x.
	self assert: c equals: multi.
	s2 := x =/= 3 run: s.
	self assert: (s2 constraints at: x) equals: (multi copy disequality: (x =/= 3) asConstraint).
	self assert: c equals: multi