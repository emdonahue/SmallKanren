as yet unclassified
logLikelihood: anObs
	probabilities ifEmpty: [ ^ 0 ]. "If no probabilities, return likelihood 1 for everything to allow dynamic counting without pre-specifying the domain."
	^ probabilities at: anObs ifAbsent: Float negativeInfinity.