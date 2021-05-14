initialization
initialize
	super initialize.
	substitution := SKSubstitution new.
	constraints := SKConstraintStore empty.
	schedule := SKDelayQueue empty.