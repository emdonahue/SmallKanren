classic tabling
testTabledGuardedConsumer
	| r x |
	self skip.
	x := SKVar new.
	r := [ 
		{[[ x === 1 ] fresh] fresh. [ :a | SKGoal succeed ] tabled: #test inputs: {x}}.
		] asGoal runtime.
	self assert: (r runStatesForced first reify: x) equals: 1.
	self assert: (r tables at: #test) values first first argv equals: x cons.