checking
checkIn: aState
	"Since disequalities do not start with an obvious variable to check, we can skip checkAgainst and just run the constraint. We 'unify' LHS and RHS in the current substitution and use the resulting substitution to constrain the state. An unchanged substitution => the terms were always already equal, so the constraint fails. A failure to unify means the terms can never be made equal, so the constraint is unnecessary. An extended substitution gives us a simplified form of the constraint to add to the store."

	^ (self disunify: aState substitution) constrain: aState