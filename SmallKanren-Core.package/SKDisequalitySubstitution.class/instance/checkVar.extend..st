extending
checkVar: otherVar extend: aVar
	"Substitutions have no constraints to run within disequality checking, so simply extend."
	self halt.
	^ self extend: aVar with: otherVar.