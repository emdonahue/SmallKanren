parsing
extend: var with: val in: substitution o: extendedSub
	| subVars extSubVars allVars |
	subVars := self freshVars.
	extSubVars := self freshVars.
	allVars := (1 to: self vars size)
		collect: [ :i | 
			{(subVars at: i).
			(extSubVars at: i).
			(self vars at: i)} ].
	^ substitution === subVars asCons & (extendedSub === extSubVars asCons)
		&
			(allVars
				inject: SKGoal succeed
				into: [ :g :se | 
					g
						&
							(se first === var & (se second === val)
								| ((self not: se first equals: var) & (se second === se first))) ])