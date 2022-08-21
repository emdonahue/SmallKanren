as yet unclassified
sufficientStatistics: anObs
	"Observes a log count of 1."
	^ SKSparseSufficientStatistics new statistics: (Dictionary with: anObs -> 0).