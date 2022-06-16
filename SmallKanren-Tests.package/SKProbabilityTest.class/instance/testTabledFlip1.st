tests-tabling
testTabledFlip1
	| c s |
	c := SKBernoulli new p: 0.6.
	self assert: [ {[ :o | c sample: o ] tabled: #flip inputs: {1}. 
		[ :o | c sample: o ] tabled: #flip inputs: {1}} ] asGoal runStates first likelihood exp equals: 0.6 ** 2.
	self assert: ([ 
		{[ :o | c sample: o ] tabled: #flip inputs: {1}. 
		{[ :o | c sample: o ] tabled: #flip inputs: {1}.
			[ :o | c sample: o ] tabled: #flip inputs: {1}.} conde} ] asGoal runStates collect: [ :st | st likelihood exp ]) sum equals: 0.6 ** 2 * 2.