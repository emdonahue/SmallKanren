substitution
substitution: a not: b

	| aVars bVars abVars |
	aVars := self fresh: self vars.
	bVars := self fresh: self vars.
	abVars := aVars collectWithIndex: [ :v :i | {v. bVars at: i} ].

	"^ {a === aVars. b === bVars."
	^ (0 to: 2 ** self vars size) collect: [ :i |
		abVars collectWithIndex: [ :v :j | 
			2 ** (j - 1) & i > 0 
			ifTrue: [ v first === v second ] 
			ifFalse: [ #not "self not: v first equals: v second type: self any" ]] ].
	"} asGoal.	"