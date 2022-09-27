tests
setUp 
	super setUp.
	x := SKVar tag: #x.
	y := SKVar tag: #y.
	s := SKSubstitution new.
	r := SKRuntime new.