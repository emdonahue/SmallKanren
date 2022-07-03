tests
testFail
	| ss |
	ss := false asGoal run.
	self assert: ss isEmpty.