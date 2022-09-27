constraining
check: aValue extend: aVar in: aState
	"Called by a shell looking for the constraint store. Since there are no constraints, just extend."
	^ aState extend: aVar with: aValue