probability
averagePseudoCounts: pseudoCounts
	<todo> "when was it null?"
	^ self pseudocounts: (self pseudocounts average: pseudoCounts)
	"pseudoCounts ifNotNil: [
		^ self copy pseudoCounts: (self pseudocounts average: pseudoCounts).
	]."