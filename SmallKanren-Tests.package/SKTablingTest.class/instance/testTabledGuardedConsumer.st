tests
testTabledGuardedConsumer
	| r x |
	self skip.
	x := SKVar new.
	r := [ 
		{[[ x === 1 ] fresh] fresh. [ :a | SKGoal succeed ] tabled: #test inputs: {x}}.
		] asGoal runtime.
	self assert: (r run first reify: x) equals: 1.
	self assert: (r runTablesOnly at: #test) values first first argv equals: x cons.