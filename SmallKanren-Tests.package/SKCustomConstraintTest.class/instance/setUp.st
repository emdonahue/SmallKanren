running
setUp
	super setUp.
	x := SKVar tag: #x.
	y := SKVar tag: #y.
	z := SKVar tag: #z.
	s := SKState new.
	r := SKRuntime new.