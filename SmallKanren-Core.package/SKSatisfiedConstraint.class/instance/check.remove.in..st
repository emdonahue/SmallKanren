checking
check: aVal remove: aVar in: aState
	"The trivial constraint does not need to remove anything from the store, so it simply passes on the state."
	^ aState.