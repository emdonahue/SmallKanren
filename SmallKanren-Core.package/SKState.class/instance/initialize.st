initialization
initialize
	super initialize.
	substitution := SKSubstitution new.
	constraints := SKEmptyConstraintStore singleton.
	score := 0.