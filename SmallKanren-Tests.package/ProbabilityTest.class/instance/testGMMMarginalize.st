tests-gmm
testGMMMarginalize
	| ll epoch |
	
	ll := [ :b :n0 :n1 :x | b marginalizeo: [ :z | { { z === 0. n0 sample: x }. {z === 1. n1 sample: x} } conde ] ].
	
	epoch := ([ :m | {ll value: m first value: m second value: m third value: 0.
				ll value: m first value: m second value: m third value: 0.1.
				ll value: m first value: m second value: m third value: 10.
				ll value: m first value: m second value: m third value: 10.1.
				}] asGoal trainingEpochs: 
			{SKBernoulli new p: 0.9. SKNormal new mean: 4 ln; std: 1 ln. SKNormal new mean: 6 ln; std: 1 ln}) last.
			
	self assert: epoch model first p closeTo: 0.5 precision: 0.0001.
	self assert: epoch model second mean exp closeTo: 0.05 precision: 0.01.
	self assert: epoch model third mean exp closeTo: 10.05 precision: 0.01.