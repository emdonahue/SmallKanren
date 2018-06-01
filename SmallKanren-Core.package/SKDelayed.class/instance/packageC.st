delaying
packageC
	"A delayed state should contain delayed variables, and the delayedVars cache should contain exactly one copy of every delayed variable in the constraint store.."
	
	^ suspendedVars isNotEmpty & (suspendedVars allSatisfy: [ :kv | kv car = kv cdr var ])
	"delayedVars ifEmpty: [ ^ false ].
	state constraints
		keysAndValuesDo: [ :var :const | 
			const
				ifDelayed: [ (delayedVars includes: var)
						ifFalse: [ ^ false ] ] ].
	(delayedVars allSatisfy: [ :v | state constraints includesKey: v ])
		ifFalse: [ ^ false ].
	^ state packageC not"