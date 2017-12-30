tests
testFresh
	| ss v |
	ss := [ :var | (v := var) === 1 ] asGoal runner runAll.
	self assert: ss size equals: 1.
	self assert: ss first => v equals: 1