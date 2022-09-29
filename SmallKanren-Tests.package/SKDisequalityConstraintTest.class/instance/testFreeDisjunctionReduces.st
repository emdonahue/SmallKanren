disjunction
testFreeDisjunctionReduces
	"If one element of a disjunction is satisfied, the rest of the disjunction should be preserved as a new constraint, excluding only that one piece. Other parts of the disjunction may still be unsatisfied and fail later."
	self assert: ((x =/= y run: (x =/= 2 run: SKSubstitution new)) unify: x with: 3) constraints store size equals: 1.
	self assert: ((x =/= 2 run: (x =/= y run: SKSubstitution new)) unify: x with: 3) constraints store size equals: 1