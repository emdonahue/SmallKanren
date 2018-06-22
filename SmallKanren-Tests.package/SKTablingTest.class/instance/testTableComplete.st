tests
testTableComplete
	| s x |
	x := SKVar new.
	s := ([ :y | y === 1 | (y === 2) | (y === 3) ] tabled: #test o: {x.}) asGoal runner stream.
	self assert: (s isKindOf: SKComplete).
	self assert: (s right isKindOf: SKComplete).
	self assert: (s right right isKindOf: SKState).