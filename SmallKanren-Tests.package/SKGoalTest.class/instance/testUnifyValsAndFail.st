unify
testUnifyValsAndFail
	| ss |
	ss := (42 === 51) runStates.
	self assert: ss size equals: 0.