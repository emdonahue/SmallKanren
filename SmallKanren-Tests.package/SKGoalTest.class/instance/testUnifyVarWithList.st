tests-unify
testUnifyVarWithList
	| ss |
	ss := (x === 42 cons) runner runAll.
	self assert: ss size equals: 1.
	self assert: ss first => x equals: 42 cons