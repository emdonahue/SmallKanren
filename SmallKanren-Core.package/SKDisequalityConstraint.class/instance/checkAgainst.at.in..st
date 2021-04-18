checking
checkAgainst: aValue at: aVar in: aState
	^ (self unify: aVar with: aValue) checkIn: aState