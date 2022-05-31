tests
testPseudoCountWeight
	
	| b |
	b := SKBernoulli new p: 0.9.
	self assert: (((SKPseudoCounts new observe: 1 from: b) * 0.5 ln) at: b) statistics second exp closeTo: 0.5 * 0.9 precision: 0.0001.