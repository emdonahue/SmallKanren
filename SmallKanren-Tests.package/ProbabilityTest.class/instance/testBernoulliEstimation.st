tests
testBernoulliEstimation
	self assert: SKBernoulliEmpirical new ones equals: 0 ln.
	self assert: (SKBernoulliEmpirical new observe: 1 weight: 0) ones equals: 1 ln.
	self assert: (SKBernoulliEmpirical new observe: 1 weight: 0) zeroes equals: 0 ln.
	self assert: (SKBernoulliEmpirical new observe: 1 weight: 0) maximize p equals: 1.
	self assert: ((SKBernoulliEmpirical new observe: 1 weight: 0) weight: 0.5 ln) ones equals: 0.5 ln.
	self assert: ((SKBernoulliEmpirical new observe: 1 weight: 0) weight: 0.5 ln) zeroes equals: 0 ln.
	self assert: ((SKBernoulliEmpirical new observe: 1 weight: 0) weight: 0.5 ln) maximize p equals: 1.
	self assert: (((SKBernoulliEmpirical new observe: 1 weight: 0) observe: 0 weight: 0) weight: 0.5 ln) zeroes equals: 0.5 ln.
	self assert: (((SKBernoulliEmpirical new observe: 1 weight: 0) observe: 0 weight: 0) weight: 0.5 ln) maximize p equals: 0.5.
	self assert: ((SKBernoulliEmpirical new observe: 1 weight: 0) + (SKBernoulliEmpirical new observe: 0 weight: 0)) ones equals: 1 ln.
	self assert: ((SKBernoulliEmpirical new observe: 1 weight: 0) + (SKBernoulliEmpirical new observe: 0 weight: 0)) zeroes equals: 1 ln.	
	self assert: ((SKBernoulliEmpirical new ones: 90 ln; zeroes: 10 ln) weight: 1 ln) maximize p closeTo: 0.9 precision: 0.01.	
	self assert: ((SKBernoulliEmpirical new ones: 10 ln; zeroes: 90 ln) weight: 1 ln) maximize p closeTo: 0.1 precision: 0.09.
	self assert: (((SKBernoulliEmpirical new ones: 100) weight: 0.9 ln) + ((SKBernoulliEmpirical new zeroes: 100) weight: 0.1 ln)) maximize p closeTo: 0.9 precision: 0.01.
	self assert: (((SKBernoulliEmpirical new ones: 100) weight: 0.1 ln) + ((SKBernoulliEmpirical new zeroes: 100) weight: 0.9 ln)) maximize p closeTo: 0.1 precision: 0.01.