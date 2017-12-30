as yet unclassified
testFiniteScores
	| g m ss incs |
	m := SKTraceModel new trace: 2 cons cons.
	g := {{(x === 0).
	(x === 1)}} asGoal runCPS: m.
	ss := g step.
	incs := {ss stream left.
	ss stream right}.
	incs do: [ :inc | self assert: (inc goal right )  equals: inc score ]