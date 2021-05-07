constraining
extend: aVar checkVar: otherVar runtime: aRuntime
	"Called by the unifier during disequality unification."
	^ (self extend: aVar noOccursCheck: otherVar) check: aVar against: otherVar