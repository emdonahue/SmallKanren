probability
averagePseudoCounts: pseudoCounts
	<todo> "when was it null?"
	pseudoCounts isEmpty ifFalse: [
		^ self pseudocounts: (self pseudocounts average: pseudoCounts)].