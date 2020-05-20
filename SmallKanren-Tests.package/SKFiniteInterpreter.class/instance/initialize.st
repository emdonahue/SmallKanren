parsing
initialize
	super initialize.
	primitives := Dictionary
		new
		at: #var put: #(x y z);
		at: #number put: #(1 2);
		yourself