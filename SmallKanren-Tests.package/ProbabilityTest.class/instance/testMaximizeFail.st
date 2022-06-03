tests-argmax
testMaximizeFail
	| b st o |
	b := SKBernoulli new p: 0.6.
	o := SKVar new.
	st := { b argmax: o o: [ :m | SKGoal fail ] } asGoal runStates.
	self assert: st isEmpty.