walk
walk: var in: substitution o: val
	"Builds a list of fresh vars corresponding to the order of variables in the interpreter's var name list. Unify the vars with the substitution, and for each one, unify the output val with it and its corresponding var name with the walked var. Thus, if var is bound to the second var name in the interpreter's list, val will be bound to the second item in the substitution. Note that the substitution is fixed length, equal in length to the number of var names, and free vars are bound to their own names (which are reserved words), so unifying with an unbound var just returns that var's name, which is the way we represent unbound vars."

	| logicVars |
	logicVars := self vars collect: [ :v | SKVar new tag: v ].
	"If var is a primitive, simply return it."
	^ {{((self is: var in: self nonVars) & (val === var)).

	"Otherwise, unify var names with var and corresponding substitution values with val. Only one var name will unify with the walked var, hence only one val is returned."
	{(substitution === logicVars asCons).
	((self vars 	with: logicVars collect: [ :a :b | {a. b} ])
		inject: SKGoal fail
		into: [ :g :lv | g | (var === lv first & (val === lv second)) ])}}} asGoal