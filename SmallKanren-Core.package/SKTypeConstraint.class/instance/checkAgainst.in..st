checking
checkAgainst: aValue in: aState

	aValue isSKVar
		ifTrue: [ ^ aState constrain: aValue with: self ].	"if the Var is free, store the constraint for future application."
	^ (self typeChecks: aValue)
		ifTrue: aState
		ifFalse: SKEmptyStream singleton	"Otherwise, pass or fail based on the type."