checking
check: aVar value: aVal in: aState
	"The trivial constraint does not need to remove anything from the store, so it simply passes on the state."
	^ aState extend: aVar with: aVal.