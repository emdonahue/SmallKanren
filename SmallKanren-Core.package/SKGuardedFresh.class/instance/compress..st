merging
compress: aConstraint
	aConstraint isGuardedFresh ifTrue: [ ^ SKGuardedFreshConjoined first: self rest: aConstraint ]. 