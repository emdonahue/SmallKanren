setup
setUp
	interpreter := SKFiniteInterpreter new.
	interpreter vars: #(x y z).
	variables := (interpreter vars
		collect: [ :v | v -> (SKVar new tag: v) ]) asDictionary