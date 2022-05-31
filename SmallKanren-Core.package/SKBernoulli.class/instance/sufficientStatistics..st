as yet unclassified
sufficientStatistics: anObs
	^ SKSufficientStatistics from:
		(anObs isZero 
			ifTrue: {0. Float negativeInfinity}
			ifFalse: {Float negativeInfinity. 0}).