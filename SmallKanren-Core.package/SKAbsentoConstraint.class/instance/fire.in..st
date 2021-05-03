checking
fire: aValue in: aSKState
	"Farms out the exclusion check to the unified data structure, which will ultimately use #constrain:in: to add simplified constraints."
	^ aValue skAbsento: self in: aSKState