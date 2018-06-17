as yet unclassified
consumeAnswer
	"full unify unnecessary: can make a subunifier."

	<todo>
	self hasAnswers
		ifTrue: [ 
	numConsumed := numConsumed + 1.
	^ (state unify: argVars with: (state copyTerm: (cache at: numConsumed))).].
^ SKStream failure.