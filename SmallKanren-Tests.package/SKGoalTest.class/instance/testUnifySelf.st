tests-unify
testUnifySelf
	| ss |
	ss := (x === x) runner runAll.
	self assert: ss size equals: 1.
	self assert: ss first substitution size equals: 0