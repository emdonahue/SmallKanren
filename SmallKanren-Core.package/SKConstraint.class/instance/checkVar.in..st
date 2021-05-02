checking
checkVar: aVar in: aState
	"Called by constraint goals when adding to a free var. Many constraints cannot fire on a free var, and so they should just add themselves to the store. Constraints such as disequalities that can still fail with a free var should override this and route it to the normal check:in: method."
	^ aState add: aVar constraint: self.