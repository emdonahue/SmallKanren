constraining
checkVar: otherVar extend: aVar
	"Called by the unifier during disequality unification."
	self halt.
	^ (self extend: aVar noOccursCheck: otherVar) check: aVar against: otherVar