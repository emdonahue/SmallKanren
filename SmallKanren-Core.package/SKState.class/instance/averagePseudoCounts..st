probability
averagePseudoCounts: pseudoCounts
	pseudoCounts ifNotNil: [
		^ self copy pseudoCounts: (self pseudoCounts average: pseudoCounts).
	].