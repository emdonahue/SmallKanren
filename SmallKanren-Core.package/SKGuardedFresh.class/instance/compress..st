merging
compress: aConstraint
	aConstraint isGuardedFresh ifTrue: [ ^ aConstraint add: self ]. 