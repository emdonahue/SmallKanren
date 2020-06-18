tests
setUp
	interpreter := SKFiniteInterpreter new.
	interpreter vars: #(x y z).
	variables := Dictionary new.
	env := #(#(x y z) #(#() #() #())) asConsTree