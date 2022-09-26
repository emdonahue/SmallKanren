unifying
skUnify: aVal in: aState

	"Top level unification method called by the unifier to unify variables and resolve constraints. Calls the other object for second level unification letting it know that this is a Var and let it handle unification. Both terms have already been walked."

	^ aVal skUnifyVar: self in: aState