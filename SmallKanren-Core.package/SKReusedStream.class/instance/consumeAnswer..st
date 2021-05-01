subclassresponsibility
consumeAnswer: aRunner
	"full unify unnecessary: can make a subunifier."
	<type: #SKRuntime returns: #(OrC SKState SKFailure)>
	<todo>
	self hasAnswers
		ifTrue: [ numConsumed := numConsumed + 1.
			^ state unify: argVars with: (state copyTerm: (cache at: numConsumed)) ].
	^ SKStream failure.