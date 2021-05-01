classic tabling
testTableCompleteUnique
	| s x |
	x := SKVar new.
	s := ([ :y | (y === 1) | (y === 1) ] tabled: #test inputs: {x.}) asGoal runtime stream.
	self assert: (s isKindOf: SKState).