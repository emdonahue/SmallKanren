interpreting
extend: var with: constraint type: type store: store o: out
	| storeVars outVars allVars |
	storeVars := self fresh: self vars.
	outVars := self fresh: self vars.
	allVars := (1 to: self vars size)
		collect: [ :i | 
			{(self vars at: i).
			(storeVars at: i).
			(outVars at: i)} ].
	^ store === storeVars & (out === outVars)
		&
			(allVars
				inject: SKGoal succeed
				into: [ :g :s | 
					g
						&
							(s first === var
								&
									(self
										extend: type
										with: constraint
										store: s second
										o: s third)
								|
									((self not: s first equals: var type: self vars)
										& (s second === s third))) ])