checking
check: aVar against: aVal in: aState

	| c |
	c := (self type merge2: self disequality) merge2: self exclusion.
	^ c check: aVar against: aVal in: aState.
	
	"^ self checkAgainst: aVal in: aState."