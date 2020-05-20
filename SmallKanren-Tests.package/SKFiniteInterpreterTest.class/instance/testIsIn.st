tests
testIsIn
	self assert: [ interpreter is: #z in: #(x y z) ] asGoal succeeds