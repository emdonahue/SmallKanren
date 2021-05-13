running
setUp
	super setUp.
	x := SKVar tag: #x.
	y := SKVar tag: #y.
	s := SKState new.
	r := SKRuntime new.
	