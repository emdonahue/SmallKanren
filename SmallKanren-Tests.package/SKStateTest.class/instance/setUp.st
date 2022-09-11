running
setUp
	super setUp.
	s := SKState new.
	x := SKVar new.
	y := SKVar new.
	z := SKVar new.
	satisfied := SKConstraint satisfied.
	r := SKRuntime new.