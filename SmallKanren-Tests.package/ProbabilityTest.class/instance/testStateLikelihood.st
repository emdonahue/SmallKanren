tests
testStateLikelihood
	| b |
	b := SKBernoulliEstimate new p: 0.6.
	self assert: [ SKSampleGoal new distribution: b; sample: 1 ] asGoal asSpace first likelihood exp equals: 0.6.
	self assert: [ SKSampleGoal new distribution: b; sample: 0 ] asGoal asSpace first likelihood exp equals: 0.4.
	self assert: [ (SKSampleGoal new distribution: b; sample: 1) & (SKSampleGoal new distribution: b; sample: 1) ] asGoal asSpace first likelihood exp equals: 0.6 ** 2.
	self assert: [ (SKSampleGoal new distribution: b; sample: 1) & (SKSampleGoal new distribution: b; sample: 0) ] asGoal asSpace first likelihood exp closeTo: 0.6 * 0.4 precision: 0.0001.
	