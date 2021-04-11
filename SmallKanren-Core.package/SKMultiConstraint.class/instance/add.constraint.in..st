reducing
add: aVar constraint: aConstraint in: aState
	"MultiConstraints let the other constraint assign its type-specific constraint to the appropraite slot in the MultiConstraint."

	^ aConstraint add: aVar constraint: self copy in: aState