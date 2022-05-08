tests
testBernoulliEstimation
	self assert: (((SKBernoulliEmpirical new observe: 1) observe: 0) weight: 1 ln add: SKBernoulliEmpirical new) maximize logP equals: 0.5 ln.
	self assert: ((SKBernoulliEmpirical new ones: 90; zeroes: 10) weight: 1 ln add: SKBernoulliEmpirical new) maximize p closeTo: 0.9 precision: 0.01.
	self assert: ((SKBernoulliEmpirical new ones: 10; zeroes: 90) weight: 1 ln add: SKBernoulliEmpirical new) maximize p closeTo: 0.1 precision: 0.09.
	self assert: ((SKBernoulliEmpirical new ones: 100) weight: 0.9 ln add: ((SKBernoulliEmpirical new zeroes: 100) weight: 0.1 ln add: SKBernoulliEmpirical new)) maximize p closeTo: 0.9 precision: 0.01.
	self assert: ((SKBernoulliEmpirical new ones: 100) weight: 0.1 ln add: ((SKBernoulliEmpirical new zeroes: 100) weight: 0.9 ln add: SKBernoulliEmpirical new)) maximize p closeTo: 0.1 precision: 0.01.