classic tabling
testTabledGuardedProducer
	
	| r |
	r := [ :x | 
		[ :a | [ a === 1 ] fresh ] tabled: #test inputs: {x}] asGoal runtime.
	self assert: r runForced equals: 1 cons cons.
	self assert: (r tables at: #test) values first first argv equals: 1 cons.