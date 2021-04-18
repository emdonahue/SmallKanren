reifying
skReify: aConstraintStore
	<todo> "fix constraint reifier"
	self halt.
	^ self class new excluded: (aConstraintStore reify: excluded)