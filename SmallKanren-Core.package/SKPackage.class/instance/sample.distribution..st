probability
sample: aSample distribution: aDistribution

	^ self copy jointDistribution: (self jointDistribution sample: aSample distribution: aDistribution).