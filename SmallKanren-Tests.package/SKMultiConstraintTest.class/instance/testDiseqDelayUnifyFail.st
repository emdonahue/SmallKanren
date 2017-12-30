delayed
testDiseqDelayUnifyFail
	"Multiconstraint disequalities fire before delays when unified."

	| s |
	s := (x =/= 1 cons & (x carCdrIn: [ :a :d | Error signal ]) & (x === 1 cons)) step.
	self assert: s isEmptyStream