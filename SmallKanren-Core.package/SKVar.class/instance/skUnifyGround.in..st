unification
skUnifyGround: aValue in: aState
	"Unify Var with ground and fire constraints. Unlike unifyPrimitive, this is called during unification, not at goal construction time."
	^ aState extendAndCheck: self with: aValue