tests
testTableCompleteUnique
	| s x |
	x := SKVar new.
	s := ([ :y | (y === 1) | (y === 1) ] tabled: #test inputs: {x.}) asGoal runtime next stream.
	self assert: (s isKindOf: SKSubstitution).