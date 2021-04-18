checking
disunify: aState
	"Perform the usual unification, then continue unifying the rest of the constraints in the same substitution."
	^ (self unify: aState) disunify: rest.