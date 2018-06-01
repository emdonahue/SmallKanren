reifying
skReify: aConstraintStore
	^ (super skReify: aConstraintStore ) next: (aConstraintStore reify: next)