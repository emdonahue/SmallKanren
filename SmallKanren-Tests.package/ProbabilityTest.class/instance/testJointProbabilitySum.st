tests
testJointProbabilitySum
	
	| b a |
	a := SKBernoulliEstimate new p: 0.1.
	b := SKBernoulliEstimate new p: 0.9.
	self assert: (((SKJointDistribution new sample: 1 distribution: b) + (SKJointDistribution new sample: 0 distribution: b)) maximize: b) p equals: 0.5.
	self assert: (((SKJointDistribution new sample: 1 distribution: b) + (SKJointDistribution new sample: 0 distribution: a)) maximize: b) p equals: 1.
	self assert: (((SKJointDistribution new sample: 1 distribution: b) + (SKJointDistribution new sample: 0 distribution: a)) maximize: a) p equals: 0.