delayed
testDiseqDelayFail
	"Multiconstraint disequalities fire before delays when undelaying."

	| s |
	s := (x =/= 1 cons & (x carCdrIn: [ :a :d | (a cons: d) === 1 cons ])) step step.
	self assert: s isEmptyStream