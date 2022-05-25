tests
testGMMConditionalIndependence
	| ll model |
	ll := [ :z :n0 :n1 :x | z marginalize: SKVar new o: [ :Z | { { Z === 0. n0 sample: x }. {Z === 1. n1 sample: x} } conde ] ].
	
	model := ([ :m | {ll value: m first value: m second value: m third value: 0.
				ll value: m first value: m second value: m third value: 0.1.
				ll value: m first value: m second value: m third value: 10.
				ll value: m first value: m second value: m third value: 10.1.
				}] asGoal train: 
			{SKBernoulliEstimate new p: 0.9. SKNormalEstimate new mean: 4 ln; std: 1 ln. SKNormalEstimate new mean: 6 ln; std: 1 ln}) last.
	self assert: model first first p closeTo: 0.5 precision: 0.0001.
	self assert: model first second mean exp closeTo: 0.05 precision: 0.01.
	self assert: model first third mean exp closeTo: 10.05 precision: 0.01.