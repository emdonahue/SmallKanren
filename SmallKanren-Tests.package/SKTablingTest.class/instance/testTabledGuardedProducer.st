tests
testTabledGuardedProducer
	
	| r |
	r := [ :x | 
		[ :a | [ a === 1 ] fresh ] tabled: #test inputs: {x}] asGoal runtime.
	self assert: r runList equals: 1 cons cons.
	self assert: (r runTablesOnly at: #test) values first first argv equals: 1 cons.