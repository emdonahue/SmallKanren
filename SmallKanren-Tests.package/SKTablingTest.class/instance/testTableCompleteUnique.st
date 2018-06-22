tests
testTableCompleteUnique
	| s x |
	x := SKVar new.
	s := ([ :y | (y === 1) | (y === 1) ] tabled: #test o: {x.}) asGoal runner stream.
	self assert: (s isKindOf: SKState).