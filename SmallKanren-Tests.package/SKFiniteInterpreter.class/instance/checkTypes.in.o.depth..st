typeo
checkTypes: types in: env o: out depth: depth
	"Run all typeo constraints. Types is a list of (var . type) pairs."

	depth = 0
		ifTrue: [ ^ env === out ].
	^ [ :var_type :rest :checkedEnv | 
	"If the search has already failed, pass along the empty substitution."
	{{(types === Cons empty & (env === out)).
	
		{(var_type cons: rest) === types.
		self perform: #checkTypeo:in:o: with: var_type with: env with: checkedEnv.
		self checkTypes: rest in: checkedEnv o: out depth: depth - 1 }}} ] asGoal