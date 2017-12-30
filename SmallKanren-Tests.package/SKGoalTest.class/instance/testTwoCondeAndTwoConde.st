tests-and
testTwoCondeAndTwoConde
	| ss |
	ss := (([ x === 1 ] asGoal & [ y === 2 ]) & ([ a === 4 ] asGoal & [ z === 3 ])) runner runAll.
	self assert: ss size equals: 1.
	self assert: ss first => x equals: 1.
	self assert: ss first => y equals: 2.
	self assert: ss first => z equals: 3.
	self assert: ss first => a equals: 4