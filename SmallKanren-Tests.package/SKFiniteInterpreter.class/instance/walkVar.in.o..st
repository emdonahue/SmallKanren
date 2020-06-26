walk
walkVar: var in: substitution o: val
"A specialized walk that assumes var is a variable, reducing the number of unnecessarily generated walks of constants in the final code where not helpful to test core functionality (like 1 isNumbero)."
	| logicVars |
	logicVars := self vars collect: [ :v | SKVar new tag: v ].
	^ substitution === logicVars asCons
		&
			((self vars
				with: logicVars
				collect: [ :a :b | 
					{a.
					b} ])
				inject: SKGoal fail
				into: [ :g :lv | g | (var === lv first & (val === lv second)) ])