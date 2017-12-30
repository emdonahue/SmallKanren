tests-and
testDeeplyConjoinedLazies
	| ss x1  |
	x1 := [ x === 1 ] asGoal.
	ss := (((x1 & x1) & (x1 & x1)) & (x1 & x1) & (x1 & x1)) runner
		runAll.
	self assert: ss size equals: 1.
	self assert: ss first => x equals: 1