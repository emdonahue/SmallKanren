tests
testAddTwoPassFree
	"Constraints should shift to single var after free-free unification"

	| ySymbolo |
	ySymbolo := (y =/= 2 run: (x =/= 1 run: SKState new)) unify: x with: y.
	self assert: (ySymbolo constraints at: y) equals: y =/= 2 , (y =/= 1).
	self assert: (ySymbolo constraints at: x) equals: SKSatisfiedConstraint singleton