interpreting
walkVar: var in: substitution o: val
	| logicVars |
	logicVars := self vars collect: [ :v | SKVar new tag: v ].
	^ 
			(substitution === logicVars asCons
				&
					((self vars
						with: logicVars
						collect: [ :a :b | 
							{a.
							b} ])
						inject: SKGoal fail
						into: [ :g :lv | g | (var === lv first & (val === lv second)) ]))