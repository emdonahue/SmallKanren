tests-and
testLazyAndUnify
	| ss |
	ss := ([x === 1] asGoal & (y === 2)) runner runAll.
	self assert: ss size equals: 1.
	self assert: ss first => x equals: 1.
	self assert: ss first => y equals: 2.