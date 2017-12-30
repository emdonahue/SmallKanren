unification
skUnify: aValue in: aState
	"Called by the unifier to unify and resolve constraints."
	^ aValue skUnifyVar: self in: aState