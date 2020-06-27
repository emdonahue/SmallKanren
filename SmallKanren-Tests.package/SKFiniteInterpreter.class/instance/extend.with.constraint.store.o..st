constraints
extend: var with: constraint constraint: constraintType store: store o: out
	"Extend the constraint store. Constraints are stored in a list of lists, one list per constraint type. Each constraint type list stores (varname . constraint-data) pairs. Much like with the substitution, we unify the input and output with a parallel lists of fresh vars indexed by the constraint type. We unify the old value if the extended constraint type does not match the current index, and the new value if it does."

	| storeVars outVars allVars |
	storeVars := self fresh: self constraints.
	outVars := self fresh: self constraints.
	allVars := (1 to: self constraints size)
		collect: [ :i | 
			{(self constraints at: i).
			(storeVars at: i).
			(outVars at: i)} ].
	^ store === storeVars & (out === outVars)
		&
			(allVars
				inject: SKGoal succeed
				into: [ :g :s | 
					{g.
					{(s first === constraintType
						& (s third === ((var cons: constraint) cons: s second))).
					((self not: s first equals: constraintType type: self constraints)
						& (s second === s third))}} asGoal ])