tests
testFail
	| ss |
	ss := false asGoal runner runAll.
	self assert: ss isEmpty.