constraints
checkConstraints: listOfConstraints violation: violationMsg in: env o: out depth: depth
	"Run all typeo constraints. Types is a list of (var . type) pairs."

	depth = 0
		ifTrue: [ ^ env === out ].
	^ {env === Cons empty. out === Cons empty} asGoal
	| [ :var_type :rest :checkedEnv | 
	"If the search has already failed, pass along the empty substitution."
	env isNotEmptyo &
	{{(listOfConstraints === Cons empty & (env === out)).
	
		{(var_type cons: rest) === listOfConstraints.
		self perform: violationMsg with: var_type with: env with: checkedEnv.
		self checkConstraints: rest violation: violationMsg in: checkedEnv o: out depth: depth - 1 }}} ] asGoal