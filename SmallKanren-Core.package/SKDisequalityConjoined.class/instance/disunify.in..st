checking
disunify: aVal in: aState
	"Build the disunified substitution with the first constraint and continue with the rest."
	^ (first disunify: aVal in: aState) disunify: rest.