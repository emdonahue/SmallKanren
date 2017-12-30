unification
skUnifyVar: aVar in: aState
	"Called by unifier when unifying two free Vars."
	^ aState extendAndCheck: aVar withVar: self.
	"^ (aState extend: aVar noOccursCheck: self) checkConstraintsOn: aVar boundTo: self	""Since both terms are vars, we do not need an occurs check."