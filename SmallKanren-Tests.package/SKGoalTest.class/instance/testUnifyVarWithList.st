unify
testUnifyVarWithList
	| ss |
	ss := (x === 42 cons) runStates.
	self assert: ss size equals: 1.
	self assert: ss first => x equals: 42 cons