tests-argmax
testMaximizeNuisance
	| b st |
	b := SKBernoulli new p: 0.6.
	st := { b argmaxo: [ :m | {m === 0. m === 1} conde ] } asGoal runStates.
	self assert: st size equals: 1.
	self assert: st first substitution isEmpty.
	self assert: st first likelihood equals: (0.6 ln).