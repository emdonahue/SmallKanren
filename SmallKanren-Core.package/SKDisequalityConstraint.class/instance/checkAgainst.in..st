checking
checkAgainst: aValue in: aState
	"Since checkIn handles initial application, by this point the constraint has already been reduced at least once, and so is in normal form. Every LHS of a DE constraint will be a variable, so we can short circuit the look up of the first variable by rewriting the constraint before firing."
	^ (self reduceWithInitialValue: aValue) checkIn: aState
	