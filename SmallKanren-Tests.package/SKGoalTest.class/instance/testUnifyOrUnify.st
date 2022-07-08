or
testUnifyOrUnify
	| ss |
	ss := (x === 1 | (x === 2)) runStates.
	self assert: ss size equals: 2.
	self assert: ss first => x equals: 1.
	self assert: ss second => x equals: 2.