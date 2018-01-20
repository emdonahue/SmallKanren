and
testAndSuccess
	self assert: (SKSuccess singleton & (x === 1)) isUnification.
	self assert: (x === 1 & SKSuccess singleton) isUnification.
	self assert: (SKSuccess singleton & [ x === 1 ]) isLazy.
	self assert: ([ x === 1 ] asGoal & SKSuccess singleton) isLazy