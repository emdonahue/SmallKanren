unify
testUnifySelf
	| ss |
	ss := (x === x) runtime runAll.
	self assert: ss size equals: 1.
	self assert: ss first substitution size equals: 0