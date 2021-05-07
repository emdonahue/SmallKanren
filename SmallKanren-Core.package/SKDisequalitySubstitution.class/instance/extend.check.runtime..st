extending
extend: aVar check: aValue runtime: aRuntime
	"Substitutions have no constraints to run within disequality checking, so simply extend."
	^ self extend: aVar with: aValue.