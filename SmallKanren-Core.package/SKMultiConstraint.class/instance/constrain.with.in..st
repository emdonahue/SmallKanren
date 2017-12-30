reducing
constrain: aVar with: aConstraint in: aState
	"MultiConstraints let the other constraint assign its type-specific constraint to the appropraite slot in the MultiConstraint."

	^ aConstraint constrain: aVar with: self copy in: aState