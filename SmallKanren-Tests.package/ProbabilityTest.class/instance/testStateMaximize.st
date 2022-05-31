tests
testStateMaximize
	| b |
	b := SKBernoulli new p: 0.6.
	self assert: ([ :x | SKSampleGoal new distribution: b; sample: 1 ] asGoal asSpace first maximize: b) p equals: 1.
	self assert: ([ :x | SKSampleGoal new distribution: b; sample: 0 ] asGoal asSpace first maximize: b) p equals: 0.
	self assert: ([ :x | (SKSampleGoal new distribution: b; sample: 1) & (SKSampleGoal new distribution: b; sample: 0) ] asGoal asSpace first maximize: b) p closeTo: 0.5 precision: 0.00001.
	