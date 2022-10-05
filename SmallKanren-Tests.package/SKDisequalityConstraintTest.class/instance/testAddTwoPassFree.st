tests
testAddTwoPassFree
	"Constraints should shift to single var after free-free unification"

	| ySymbolo |
	ySymbolo := (y =/= 2 run: (x =/= 1 run: SKSubstitution new)) unify: x with: y.
	self assertCollection: {ySymbolo constraints at: y. ySymbolo constraints at: x} 
		hasSameElements: {y =/= 1, (y =/= 2). satisfied}.