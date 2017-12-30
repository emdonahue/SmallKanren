tests
testNoTypeMutation
	"Because Types are handled specially, double check that they do not mutate the MultiConstraint."

	| c s s2 twoConstraints |
	twoConstraints := (x excludes: 2) asConstraint & (x =/= 1).
	s := (x excludes: 2) run: (x =/= 1 run: SKState new).
	c := s constraints at: x.
	self assert: c equals: twoConstraints.
	s2 := x isNumbero run: s.
	self assert: (s2 constraints at: x) equals: (twoConstraints copy type: SKNumberConstraint singleton).
	self assert: c equals: twoConstraints