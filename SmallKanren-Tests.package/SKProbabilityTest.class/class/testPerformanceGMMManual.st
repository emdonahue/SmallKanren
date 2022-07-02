tests
testPerformanceGMMManual
	<script>
	| c n0 n1 condind step logsum manual |
	c := SKBernoulli new p: 0.5.
	n0 := SKNormal new mean: 0.5; std: 1.
	n1 := SKNormal new mean: 10; std: 1.
	logsum := [ :a :b | (a max: b) + ((a - b) abs negated exp + 1) ln ].
	condind := [ :x | c marginalizeo: [ :z | { z isZero ifTrue: [ n0 sample: x ] ifFalse: [ n1 sample: x] } ] ].
	manual := [ :xs | | cts |
			 (xs asCons collect: [ :x | (logsum value: ((c logLikelihood: 0) + (n0 logLikelihood: x)) value: ((c logLikelihood: 1) + (n1 logLikelihood: x))) exp ]) sum ].
	step := 10000.
	(Character lf join:
		(((step to: 10*step by: step) collect: [ :max |
			{max.
			[((1 to: max) collect: [ :x | condind value: x ]) asArray asGoal runStates force] timeToRunWithoutGC.
			[manual value: (1 to: max)] timeToRunWithoutGC.
			}
			]) collect: [ :r | Character space join: r ])) inspect.
