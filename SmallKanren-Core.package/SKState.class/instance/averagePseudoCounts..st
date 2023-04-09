probability
averagePseudoCounts: pseudoCounts
	pseudoCounts ifNotNil: [
		^ self copy pseudoCounts: (self pseudocounts average: pseudoCounts).
	].