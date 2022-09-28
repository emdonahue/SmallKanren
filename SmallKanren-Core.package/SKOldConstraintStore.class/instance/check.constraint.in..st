checking
check: aVar constraint: aConstraint in: aState
	"Sends an existing constraint everything it needs to merge with aConstraint, simplify itself, and extend the State appropriately."
	^ (self at: aVar) check: aVar constraint: aConstraint in: aState