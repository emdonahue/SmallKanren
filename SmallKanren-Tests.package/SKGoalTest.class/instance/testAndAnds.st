and
testAndAnds
	| ss |
	ss := (x === 1 & (y === 2) and: z === 3 & (x === 1)) runStates.
	self assert: ss size equals: 1.
	self assert: ss first => x equals: 1.
	self assert: ss first => y equals: 2.
	self assert: ss first => z equals: 3.