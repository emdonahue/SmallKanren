extending
extend: aVar noOccursCheck: aValue
	"Substitutions have no constraints to run within disequality checking, so simply extend."
	^ self extend: aVar with: aValue.