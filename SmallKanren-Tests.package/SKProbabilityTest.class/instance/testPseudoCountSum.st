tests-pseudocounts
testPseudoCountSum
	
	| b a |
	a := SKBernoulli new p: 0.1.
	b := SKBernoulli new p: 0.9.
	self assert: (((SKPseudoCounts new observe: 1 from: b) + (SKPseudoCounts new observe: 0 from: b)) maximize: b) p closeTo: 0.9 precision: 0.0001.
	self assert: (((SKPseudoCounts new observe: 1 from: b) + (SKPseudoCounts new observe: 0 from: a)) maximize: b) p equals: 1.
	self assert: (((SKPseudoCounts new observe: 1 from: b) + (SKPseudoCounts new observe: 0 from: a)) maximize: a) p equals: 0.