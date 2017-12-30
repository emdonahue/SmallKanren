tests-and
testAndFail
	self assert: (SKFailure singleton & (x === 1)) isFailure.
	self assert: (x === 1 & SKFailure singleton) isFailure.
	self assert: (SKFailure singleton & ([x === 1])) isFailure.
	self assert: ([x === 1] asGoal & SKFailure singleton) isFailure.
	