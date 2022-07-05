classic tabling
testProducer
	[ :x | [ :y | y === 1 ] tabled: #test inputs: {x}] asGoal runtime inspect.