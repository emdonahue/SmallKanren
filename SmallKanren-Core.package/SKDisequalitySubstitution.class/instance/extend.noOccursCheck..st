extending
extend: aVar noOccursCheck: aValue
	"Substitutions have no constraints to run within disequality checking, so simply extend."
	self halt.
	^ self extend: aVar with: aValue.