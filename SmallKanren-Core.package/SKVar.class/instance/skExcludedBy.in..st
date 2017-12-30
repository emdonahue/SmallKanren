exclusion
skExcludedBy: aConstraint in: aState
	"We should add the ExclusionConstraint to every free variable in case nested parts of the data structure are later unified with the excluded term."
	^ aState constrain: self with: aConstraint