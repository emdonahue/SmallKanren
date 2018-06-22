tests
testTableState
	| s x |
	x := SKVar new.
	s := ([ :y | SKGoal succeed ] tabled: #test o: {x.}) asGoal runner stream.
	self assert: s isState.