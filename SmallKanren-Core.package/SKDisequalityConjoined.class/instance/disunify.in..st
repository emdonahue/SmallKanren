disunifying
disunify: aVal in: aState
	"Build the disunified substitution with the first constraint and continue with the rest. First doesn't store the variable so it needs the walked aVal to check against its val."
	^ (first disunify: aVal in: aState) disunify: rest.