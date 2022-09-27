running
setUp
	super setUp.
	s := SKSubstitution new.
	x := SKVar new.
	y := SKVar new.
	z := SKVar new.
	satisfied := SKConstraint satisfied.
	r := SKRuntime new.