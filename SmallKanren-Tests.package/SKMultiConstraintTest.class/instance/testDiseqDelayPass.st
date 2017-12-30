delayed
testDiseqDelayPass
	"Disequalities satisfied by the delayed return are satisfied."

	| s |
	s := (x =/= 1 & (x carCdrIn: [ :a :d | (a cons: d) === 1 cons ])) step step.
	self assert: s => x equals: 1 cons