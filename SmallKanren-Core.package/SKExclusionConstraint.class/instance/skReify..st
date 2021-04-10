reifying
skReify: aConstraintStore
	self halt.
	^ self class new excluded: (aConstraintStore reify: excluded)