tests
testTableComplete
	| s x |
	x := SKVar new.
	s := ([ :y | y === 1 | (y === 2) | (y === 3) ] tabled: #test inputs: {x.}) asGoal runtime next stream.
	self assert: (s isKindOf: SKComplete).
	self assert: (s right isKindOf: SKComplete).
	self assert: (s right right isKindOf: SKState).