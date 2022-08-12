tests-distributions
testCategorical

	| c |
	c := SKCategorical new probabilities: (Dictionary with: #good -> 0.5 with: #cat -> 0.5).

	self assert: (SKCategorical new logLikelihood: #cat) equals: 1 ln.

	self assert: (c logLikelihood: #cat) equals: 0.5 ln.
	self assert: (c logLikelihood: #dog) equals: 0 ln.
	
	self assert: ((c maximize: (c sufficientStatistics: #cat) * 3 ln + (c sufficientStatistics: #good)) logLikelihood: #cat) closeTo: 0.75 ln precision: 0.0001.
	
	self assert: {c sample: #cat. c sample: #cat. c sample: #cat. c sample: #good.} asGoal runStates first likelihood equals: (0.5 ** 4) ln.
	
	self assert: (([ :m | {m first sample: #cat. m first sample: #cat. m first sample: #cat. m first sample: #good.} ] asGoal train: {c}) model first logLikelihood: #cat) closeTo: 0.75 ln precision: 0.0001.