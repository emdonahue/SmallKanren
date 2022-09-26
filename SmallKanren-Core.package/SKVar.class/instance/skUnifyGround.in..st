unifying
skUnifyGround: aValue in: aState

	"Unify Var with ground and fire constraints. Called during unification, not to construct a goal."

	^ aState check: aValue extend: self