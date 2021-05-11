unifying
skUnifyGround: aValue in: aState runtime: aRuntime
	"Unify Var with ground and fire constraints. Called during unification, not to construct a goal."

	^ aState check: aValue extend: self runtime: aRuntime