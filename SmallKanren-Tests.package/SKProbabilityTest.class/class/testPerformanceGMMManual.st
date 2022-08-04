tests
testPerformanceGMMManual
	<script>
	| c n0 n1 condind step logsum manual thirdp naive |
	c := SKBernoulli new p: 0.5.
	n0 := SKNormal new mean: 0.5; std: 1.
	n1 := SKNormal new mean: 10; std: 1.
	logsum := [ :a :b | (a max: b) + ((a - b) abs negated exp + 1) ln ].
	naive := [ :x | { { c sample: 0. n0 sample: x }. {c sample: 1. n1 sample: x} } conde ].
	condind := [ :x | c marginalizeo: [ :z | { z isZero ifTrue: [ n0 sample: x ] ifFalse: [ n1 sample: x] } ] ].
	manual := [ :xs |
			 (xs asCons collect: [ :x | {(c sufficientStatistics: 0) + (c sufficientStatistics: 1). n0 sufficientStatistics: x. n1 sufficientStatistics: x. (logsum value: ((c logLikelihood: 0) + (n0 logLikelihood: x)) value: ((c logLikelihood: 1) + (n1 logLikelihood: x))) exp} ]) sum].
	thirdp := [ :x | | g p |
		p := x collect: [ :e | PMVector with: e ].
		g := AIGaussianMixtureModel numberOfGaussians: 2.
		g initializeParametersFor: p.
		g responsibilities: (g calculateResponsibilitiesFor: p).
		g updateParametersFor: p.
		g calculateLogLikelihoodFor: p.
		 ].
	
	"60 about the highest it can go
	step := 60.
	[ true ] whileTrue: [ thirdp value: (1 to: step). step := step + 1 ]."

	step := 10000.
	"step := 5."
	(Character lf join:
		(((step to: 10*step by: step) collect: [ :max |
			{max.
			[((1 to: max) collect: [ :x | condind value: x ]) asArray asGoal runStates do: [:x|]] timeToRunWithoutGC asFloat / 1000.
			[manual value: (1 to: max)] 	timeToRunWithoutGC asFloat / 1000.
			"max < 7 ifTrue: [[((1 to: max) collect: [ :x | naive value: x ]) asArray asGoal runStates do: [:x|]] timeToRunWithoutGC] ifFalse: nil."
			"[ thirdp value: (1 to: max) ] timeToRunWithoutGC."
			}
			]) collect: [ :r | Character tab join: (r select: #isNotNil) ])) inspect.
