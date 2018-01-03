contracts
packageC
	"A delayed state should contain delayed variables, and the delayedVars cache should contain exactly one copy of every delayed variable in the constraint store.."

	delayedVars ifEmpty: [ ^ false ].
	state constraints
		keysAndValuesDo: [ :var :const | 
			const
				ifDelayed: [ (delayedVars includes: var)
						ifFalse: [ ^ false ] ] ].
	"(delayedVars allSatisfy: [ :v | state constraints includesKey: v ])"
	"delayedVars ifEmpty: [ ^ false ].	
	state constraints
		keysAndValuesDo: [ :var :const | 
			const
				ifDelayed: [ (delayedVars includes: [ :v | v = var ])
						ifFalse: [ ^ false ] ] ].
	^ true"
	^ state packageC not