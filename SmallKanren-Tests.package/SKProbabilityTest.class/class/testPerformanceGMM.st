tests
testPerformanceGMM
	<script>
	| c n0 n1 condind naive step |
	c := SKBernoulli new p: 0.5.
	n0 := SKNormal new mean: 0.5; std: 1.
	n1 := SKNormal new mean: 10; std: 1.
	condind := [ :x | c marginalizeo: [ :z | { { z === 0. n0 sample: x }. {z === 1. n1 sample: x} } conde ] ].
	naive := [ :x | { { c sample: 0. n0 sample: x }. {c sample: 1. n1 sample: x} } conde ].
	step := 1.
	((11 to: 13 by: step) collect: [ :max |
		{
		"[((1 to: max) collect: [ :x | naive value: x ]) asArray asGoal runStates first likelihood] timeToRun totalSeconds asFloat."
		[(((1 to: max) collect: [ :x | condind value: x ]) asArray asGoal runStates collect: [ :s | s likelihood exp ]) sum] timeToRun totalSeconds asFloat
		}
		]) inspect.
