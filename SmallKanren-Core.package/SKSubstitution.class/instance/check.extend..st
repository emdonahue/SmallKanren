constraining
check: aValue extend: aVar
	"Called by the unifier during disequality unification."
	^ (self extend: aVar with: aValue) check: aVar against: aValue