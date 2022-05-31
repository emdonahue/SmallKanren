tests
testBernoulliEstimation
	| b |
	b := SKBernoulli new.
	
	self assert: ((b sufficientStatistics: 1) * 0) second equals: 1 ln.
	self assert: ((b sufficientStatistics: 1) * 0) first equals: 0 ln.
	self assert: (b maximize: (b sufficientStatistics: 1)) p equals: 1.
	
	self assert: ((b sufficientStatistics: 1) * 0.5 ln) second equals: 0.5 ln.
	self assert: ((b sufficientStatistics: 1) * 0.5 ln) first equals: 0 ln.
	self assert: (b maximize: (b sufficientStatistics: 1) * 0.5 ln) p equals: 1.

	self assert: ((b sufficientStatistics: 1) + (b sufficientStatistics: 0) * 0.5 ln) first equals: 0.5 ln.
	self assert: ((b sufficientStatistics: 1) + (b sufficientStatistics: 0) * 0.5 ln) second equals: 0.5 ln.
	self assert: (b maximize: (b sufficientStatistics: 1) + (b sufficientStatistics: 0) * 0.5 ln) p equals: 0.5.
	
	self assert: (b maximize: (SKSufficientStatistics from: {10 ln. 90 ln})) p closeTo: 0.9 precision: 0.01.
	self assert: (b maximize: (SKSufficientStatistics from: {90 ln. 10 ln})) p closeTo: 0.1 precision: 0.01.

	self assert: (b maximize: 
		(SKSufficientStatistics from: {0 ln. 100 ln}) * 0.9 ln
			+ ((SKSufficientStatistics from: {100 ln. 0 ln}) * 0.1 ln)) p closeTo: 0.9 precision: 0.01.
			
	self assert: (b maximize: 
		(SKSufficientStatistics from: {0 ln. 100 ln}) * 0.1 ln
			+ ((SKSufficientStatistics from: {100 ln. 0 ln}) * 0.9 ln)) p closeTo: 0.1 precision: 0.01.