reifying
skReify: aConstraintStore
	^ self class new excluded: (aConstraintStore reify: excluded)