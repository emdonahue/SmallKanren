arithmetic
at: aDistribution add: aSufficientStatistic
	^ self copy 
		pseudocounts: (self pseudocounts copy at: aDistribution put: 
			((self at: aDistribution) + aSufficientStatistic); yourself	).