disjunction
testFreeDisjunctionFails
	"If one element of a disjunction is unsatisfiable, the whole thing is unsatisfiable and so fails."

	self assert: ((x =/= y run: (x =/= 2 run: SKState new)) unify: x with: 2) isFailure .
	self assert: ((x =/= 2 run: (x =/= y run: SKState new)) unify: x with: 2) isFailure .