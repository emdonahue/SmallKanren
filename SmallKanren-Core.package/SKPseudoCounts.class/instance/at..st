arithmetic
at: aDistribution
	^ self pseudocounts at: aDistribution ifAbsent: [ aDistribution sufficientStatistics ].