initializing
initialize
	super initialize.
	constraints := #(typeo =/= absento).
	primitives := Dictionary new
		at: #var put: #(x y);
		at: #number put: #(1 2);
		at: #list put: {Cons empty};
		yourself.
	programLength := 2.
	listDepth := 1.
	listLength := 1