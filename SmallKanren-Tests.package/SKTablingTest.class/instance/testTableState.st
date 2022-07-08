tests
testTableState
	| s x |
	x := SKVar new.
	s := ([ :y | SKGoal succeed ] tabled: #test inputs: {x}) runtime stream.
	self assert: s isState.