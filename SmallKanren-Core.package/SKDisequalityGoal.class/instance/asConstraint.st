debugging
asConstraint
	"Generates the constraint that would be applied to a fresh State by this Goal. Used for ease of notation in test-writing, not the main code."

	^ (SKSubstitution new unify: left with: right) deltas