tests
testJointProbabilityWeight
	
	| b |
	b := SKBernoulliEstimate new p: 0.9.
	self assert: (((SKJointDistribution new sample: 1 distribution: b) weight: 0.5 ln) at: b) ones exp closeTo: 0.5 * 0.9 precision: 0.0001.