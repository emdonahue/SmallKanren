interpreting
extend: var with: val in: substitution o: extendedSub
	| subVars extSubVars allVars |
	"Since the number of vars in the substitution is finite and known, we pre-generate a list of vars and simply unify with the substitution to extract them."
	subVars := self freshVars.
	extSubVars := self freshVars.
	allVars := (1 to: self vars size)
		collect: [ :i | 
			{(subVars at: i).
			(extSubVars at: i).
			(self vars at: i)} ]. "last one may be unnecessary"
	^ substitution === subVars asCons
		& (extendedSub === extSubVars asCons)
		&
			(allVars
				inject: SKGoal succeed
				into: [ :g :se | 
					"Iterate through the existing substitution. If the value is the var name we are currently extending, that ar is free so we can insert the new value into the next substitution. If the value is not a var name, it is a value, the var is not free, and we should fail."
					g
						&
							(se first === var & (se second === val)
								|
									((self not: se first equals: var type: self any)
										& (se second === se first))) ])