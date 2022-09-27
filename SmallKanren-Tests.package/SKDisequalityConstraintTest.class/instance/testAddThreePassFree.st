tests
testAddThreePassFree
	"Constraints should shift to single var after free-free unification"

	| state |
	state := (y =/= 2 run: (x =/= 2 run: (x =/= 1 run: SKSubstitution new))) unify: x with: y.
	self assert: (state constraints at: y) equals: y =/= 1, (y =/= 2).
	self assert: (state constraints at: x) equals: satisfied.