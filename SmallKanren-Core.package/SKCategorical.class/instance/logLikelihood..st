as yet unclassified
logLikelihood: anObs
	^ probabilities at: anObs ifAbsent: Float negativeInfinity.