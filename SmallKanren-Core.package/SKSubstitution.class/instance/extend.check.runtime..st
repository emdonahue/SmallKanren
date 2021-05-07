"modifying"
extend: aVar check: aValue runtime: aRuntime
	"Called by the unifier during disequality unification."
	^ (self extend: aVar with: aValue) check: aVar against: aValue