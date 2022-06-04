subclassresponsibility
consumeAnswer: aRunner
	"full unify unnecessary: can make a subunifier."
	<type: #SKRuntime returns: #(OrC SKState SKFailure)>
	<todo>
	| cacheentry |
	self hasAnswers
		ifTrue: [ numConsumed := numConsumed + 1.
			cacheentry := cache at: numConsumed.
			^ (state unify: argVars with: (state copyTerm: cacheentry argv))
				addPseudoCounts: cacheentry pseudoCounts ].
	^ SKStream failure.