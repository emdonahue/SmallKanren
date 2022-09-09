tests
testFail
	| ss |
	ss := false asGoal runList.
	self assert: ss isEmpty.