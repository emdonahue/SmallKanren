tests-tabling
testTabledFlip1
	| c s |
	c := SKBernoulli new p: 0.6.
	s := [ self halt. {[ :o | c sample: o ] tabled: #flip inputs: {1}. 
		[ :o | c sample: o ] tabled: #flip inputs: {1}} ] asGoal runStates.
	self assert: s first likelihood exp equals: 0.6 ** 2.	