initialization
initialize
	super initialize.
	type := SKSatisfiedConstraint singleton.
	disequality := SKSatisfiedConstraint singleton.
	exclusion := SKSatisfiedConstraint singleton.
	delayed := SKConstraint satisfied