checking
checkAgainst: aValue in: aState
	<todo> "this 'optimization' will sometimes swap the value for the wrong var, causing a bug."
	"Since checkIn handles initial application, by this point the constraint has already been reduced at least once, and so is in normal form. Every LHS of a DE constraint will be a variable, so we can short circuit the look up of the first variable by rewriting the constraint before firing (but RHS may also be the variable since x=/=y in stored on both x and y but we don't invert the first pair in the constraint."
	^ self checkIn: aState
	"^ (self disunify: aState substitution) constrain: aState"
	"right = aVar ifTrue: [ (aState substitution unify: left with: aValue) disunify: self rest ].
	^ (aState substitution unify: right with: aValue) disunify: self rest."
	"^ (self reduceWithInitialValue: aValue) checkIn: aState"
	