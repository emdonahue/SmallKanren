interpreting
extend: type with: constraint store: store o: out
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
					g
						&
							(s first === type & (s third === (constraint cons: s second))
								|
									((self not: s first equals: type type: self constraints)
										& (s second === s third))) ])