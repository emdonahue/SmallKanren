tests
testFail
	| ss |
	ss := false asGoal runtime runAll.
	self assert: ss isEmpty.