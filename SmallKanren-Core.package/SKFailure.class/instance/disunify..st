disequality
disunify: aDisequality
	"If during disequality constraint checking, the unification used for that checking fails, the constraints can never be made equal so the constraint is always already satisfied."
	^ SKConstraint satisfied.