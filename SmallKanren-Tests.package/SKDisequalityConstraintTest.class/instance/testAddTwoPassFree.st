tests
testAddTwoPassFree
	"Constraints should shift to single var after free-free unification"

	| ySymbolo |
	ySymbolo := (y =/= 2 run: (x =/= 1 run: SKSubstitution new)) unify: x with: y.
	self assert: (ySymbolo constraints at: y) equals: y =/= 1, (y =/= 2).
	self assert: (ySymbolo constraints at: x) equals: satisfied.