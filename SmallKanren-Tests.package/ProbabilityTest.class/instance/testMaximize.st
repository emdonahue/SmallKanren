tests-argmax
testMaximize
	| b st o |
	b := SKBernoulli new p: 0.6.
	o := SKVar new.
	st := { b argmax: o o: [ :m | {m === 0. m === 1} conde ] } asGoal runStates.
	self assert: st size equals: 1.
	self assert: (st first reify: o) equals: 1.
	self assert: st first likelihood equals: (0.6 ln).