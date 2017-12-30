running
run: aState
	"Creates a SingleDelayed constraint from the suspended block and applies it to var."
	^ self constraint checkAgainst: (aState walk: var) in: aState