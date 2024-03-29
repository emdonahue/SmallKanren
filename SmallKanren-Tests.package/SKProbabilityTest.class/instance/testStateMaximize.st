tests-goals
testStateMaximize
	| b |
	b := SKBernoulli new p: 0.6.
	self assert: ([ :x | SKObservationGoal new distribution: b; sample: 1 ] asGoal runStates first pseudoCounts maximize: b) p equals: 1.
	self assert: ([ :x | SKObservationGoal new distribution: b; sample: 0 ] asGoal runStates first pseudoCounts maximize: b) p equals: 0.
	self assert: ([ :x | (SKObservationGoal new distribution: b; sample: 1) & (SKObservationGoal new distribution: b; sample: 0) ] asGoal runStates first pseudoCounts maximize: b) p closeTo: 0.5 precision: 0.00001.
	