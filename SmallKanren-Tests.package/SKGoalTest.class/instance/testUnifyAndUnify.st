tests-and
testUnifyAndUnify
	| ss |
	ss := (x === 1 & (y === 2)) runner runAll.
	self assert: ss size equals: 1.
	self assert: ss first => x equals: 1.
	self assert: ss first => y equals: 2