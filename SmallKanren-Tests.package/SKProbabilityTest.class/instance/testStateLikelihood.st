tests-goals
testStateLikelihood
	| b |
	b := SKBernoulli new p: 0.6.
	self assert: [ b sample: 1 ] asGoal runStates first likelihood exp equals: 0.6.
	self assert: [ b sample: 0 ] asGoal runStates first likelihood exp equals: 0.4.
	self assert: [ (b sample: 1) & (b sample: 1) ] asGoal runStates first likelihood exp equals: 0.6 ** 2.
	self assert: [ (b sample: 1) & (b sample: 0) ] asGoal runStates first likelihood exp closeTo: 0.6 * 0.4 precision: 0.0001.
	