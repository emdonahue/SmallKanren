checking
check: aTerm in: aState
	"This is the point of access from constraint goals and unification. A term is pre-walked, but may be a var or val. If aTerm is a var, just merge it. If it is ground, fire the constraint."
	aTerm isSKVar ifTrue: [ ^ self checkVar: aTerm in: aState ].
	^ self fire: aTerm in: aState.