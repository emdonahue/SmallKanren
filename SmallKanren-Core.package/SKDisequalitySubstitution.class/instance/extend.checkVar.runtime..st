extending
extend: aVar checkVar: otherVar runtime: aRuntime
	"Substitutions have no constraints to run within disequality checking, so simply extend."
	^ self extend: aVar with: otherVar.