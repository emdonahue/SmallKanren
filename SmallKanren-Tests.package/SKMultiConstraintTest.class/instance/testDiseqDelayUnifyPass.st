delayed
testDiseqDelayUnifyPass
	"Multiconstraints fire delays when unified."

	| s |
	s := (x =/= 1  & (x carCdrIn: [ :a :d | (a cons: d) === 1 cons ]) & (x === 1 cons)) step.
	self assert: s => x equals: 1 cons