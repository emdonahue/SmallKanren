unify
testUnifyValsAndSucceed
	| ss |
	ss := (42 === 42) runtime runAll.
	self assert: ss size equals: 1.
	self assert: ss first substitution size equals: 0.