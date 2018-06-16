as yet unclassified
consumeAnswer
	"full unify unnecessary: can make a subunifier."

	<todo>
	numConsumed := numConsumed + 1.
	^ (state unify: argVars with: (state copyTerm: (cache at: numConsumed))) + self.