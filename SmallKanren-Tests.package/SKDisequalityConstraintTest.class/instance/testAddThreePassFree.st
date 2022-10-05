tests
testAddThreePassFree
	"Constraints should shift to single var after free-free unification"

	| s |
	s := (y =/= 2 run: (x =/= 2 run: (x =/= 1 run: SKSubstitution new))) unify: x with: y.
	self assertCollection: {s constraints at: y. s constraints at: x}
		hasSameElements: {y =/= 1, (y =/= 2).  satisfied}.