exclusion
skAbsento: aConstraint in: aState
	"We should add the absento to every free variable in case nested parts of the data structure are later unified with the excluded term."
	^ aState add: self constraint: aConstraint