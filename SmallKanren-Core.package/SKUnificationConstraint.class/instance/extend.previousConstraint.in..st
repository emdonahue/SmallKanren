simplifying
extend: aVar previousConstraint: aConstraint in: aState
	"Instead of adding a unification constraint via the constraint system, add it to the substitution. First, however, we must check all of the old constraints to ensure they don't need to propagate their own information within the state, such as x=/=y needing to assign a new disequality to y. We need to remove the constraint preemptively in case we trigger recursive unifications that attempt to re-check this constraint."
	^ (aConstraint fire: term in: (aState removeConstraint: aVar)) extend: aVar with: term.