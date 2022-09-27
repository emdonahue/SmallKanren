constraintstore
removeConstraint: aVar
	"Definitely has a constraint store since where else did the constraint removing itself come from?"
	^ self copy substitution: (substitution removeConstraint: aVar)