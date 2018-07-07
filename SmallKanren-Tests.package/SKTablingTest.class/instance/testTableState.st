classic tabling
testTableState
	| s x |
	x := SKVar new.
	s := ([ :y | SKGoal succeed ] tabled: #test inputs: {x.}) asGoal runner stream.
	self assert: s isState.