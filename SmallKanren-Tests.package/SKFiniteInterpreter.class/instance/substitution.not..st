substitution
substitution: a not: b

	| aVars bVars abVars goal |
	aVars := self fresh: self vars.
	bVars := self fresh: self vars.
	abVars := aVars collectWithIndex: [ :v :i | {v. bVars at: i} ].

	goal := (0 to: 2 ** (self vars size) - 2) collect: [ :i |
		abVars collectWithIndex: [ :v :j | 
			2 ** (j - 1) & i > 0 
			ifTrue: [ v first === v second ] 
			ifFalse: [ self not: v first equals: v second type: self any ]] ].
	
	^ {a === aVars. b === bVars.
	goal inject: false asGoal into: [ :or :ands |
		or | (ands inject: true asGoal into: [:and :unify | 
			and & unify])]} asGoal