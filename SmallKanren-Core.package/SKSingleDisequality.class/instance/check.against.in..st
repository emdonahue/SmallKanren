checking
check: aVar against: aVal in: aState
	"The primary access point into the disequality solving subsystem. Generates a new disequality (or satisfied/unsatisfiable) constraint and assigns it to the state."
	^ (self disunify: aVal with: right in: aState substitution) constrain: aState.