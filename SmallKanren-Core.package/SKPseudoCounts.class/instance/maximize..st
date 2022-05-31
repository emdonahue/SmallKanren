probability
maximize: aDistribution
	^ self pseudocounts at: aDistribution 
		ifPresent: [ :p | aDistribution maximize: p ] 
		ifAbsent: aDistribution.