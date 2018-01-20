and
testOrFail
	self assert: (SKFailure singleton | (x === 1)) isUnification.
	self assert: (x === 1 | SKFailure singleton) isUnification.
	self assert: (SKFailure singleton | [ x === 1 ]) isLazy.
	self assert: ([ x === 1 ] asGoal | SKFailure singleton) isLazy