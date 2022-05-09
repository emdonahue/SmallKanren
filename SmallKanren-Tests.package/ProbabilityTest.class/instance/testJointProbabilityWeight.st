tests
testJointProbabilityWeight
	
	| b |
	self skip.
	b := SKBernoulliEstimate new p: 0.9.
	self assert: (((SKJointDistribution new sample: 1 distribution: b) weight: 0.5 ln) at: b) ones equals: 0.5 ln.