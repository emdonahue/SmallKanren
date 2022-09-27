tests - pattern
setUp
	super setUp.
	x := SKVar tag: #x.
	y := SKVar tag: #y.
	z := SKVar tag: #z.
	failure := SKStream failure.
	r := SKRuntime new.
	s := SKSubstitution new.