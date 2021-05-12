simplifying
add: aVar constraint: aConstraint in: aState
	"Called by the constraint store to accept a new constraint from constraints firing on a newly unified free var or from a constraint goal (which constructs the constraints and lets them fire). In this case, it is merging with an already existing constraint on the variable."

	^  (self merge: aConstraint) extend: aVar previousConstraint: self in: aState