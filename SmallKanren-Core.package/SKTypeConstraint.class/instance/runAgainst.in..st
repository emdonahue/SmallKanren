checking
runAgainst: aValue in: aState

	aValue isSKVar
		ifTrue: [ ^ aState add: aValue constraint: self ].	"if the Var is free, store the constraint for future application."
	^ (self typeChecks: aValue)
		ifTrue: aState
		ifFalse: SKFailure singleton	"Otherwise, pass or fail based on the type."