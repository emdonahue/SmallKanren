as yet unclassified
testFinite
	| g m s |
	g := {{(x === 1).
	(x === 2)}} asGoal.
	m := SKTraceModel new trace: 2 cons cons.
	s := g runCPS: m.
	self assert: s next => x equals: 2.
	m trace: 1 cons cons.
	s := g runCPS: m.
	self assert: s next => x equals: 1.