reifying
skReify: aConstraintStore
	self halt.
	^ (super skReify: aConstraintStore ) next: (aConstraintStore reify: next)