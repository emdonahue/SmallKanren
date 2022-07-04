unify
testUnifyVarWithVal
	| ss |
	ss := (x === 42) runStates.
	self assert: ss size equals: 1.
	self assert: ss first => x equals: 42