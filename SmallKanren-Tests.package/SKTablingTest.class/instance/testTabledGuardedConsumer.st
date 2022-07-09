tests
testTabledGuardedConsumer
	| r x |
	x := SKVar tag: #x.
	r := [ 
		{[[ x === 1 ] fresh] fresh. [ :a | SKGoal succeed ] tabled: #test inputs: {x}}.
		] asGoal runtime.
	self assert: (r runStates first reify: x) equals: 1.
	self assert: (r runTablesOnly at: #test) values first first argv equals: 1 cons.