constraining
constrain: aVar with: aConstraint in: aState
	"An empty store has no constraints to merge with a new constraint, so just extend the store."
	^ aState extend: aVar constraint: aConstraint