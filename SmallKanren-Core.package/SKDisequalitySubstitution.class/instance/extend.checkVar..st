as yet unclassified
extend: aVar checkVar: otherVar
	"Substitutions have no constraints to run within disequality checking, so simply extend."
	^ self extend: aVar with: otherVar.