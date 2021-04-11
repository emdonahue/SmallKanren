reducing
add: aVar constraint: aConstraint in: aState
	"Called by another Constraint attempting to merge with this one after two constraints have been assigned to the same variable."

	^  (self merge: aConstraint) extend: aVar in: aState