unify
testUnifyValWithVar
	| ss |
	ss := (42 === x) runStates.
	self assert: ss size equals: 1.
	self assert: ss first => x equals: 42