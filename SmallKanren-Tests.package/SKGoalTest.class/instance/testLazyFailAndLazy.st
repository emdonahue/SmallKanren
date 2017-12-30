tests-and
testLazyFailAndLazy
	| ss |
	ss := ([ false ] asGoal & [ y === 2 ]) runner runAll.
	self assert: ss isEmpty.