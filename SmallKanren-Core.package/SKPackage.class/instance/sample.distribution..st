probability
sample: aSample distribution: aDistribution

	^ self copy logLikelihood: likelihood + (aDistribution logLikelihood: aSample); 
		jointDistribution: (self jointDistribution sample: aSample distribution: aDistribution).