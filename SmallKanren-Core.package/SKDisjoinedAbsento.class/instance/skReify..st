reifying
skReify: aConstraintStore
	<todo> "reifier probably needs to thread more information through"
	^ (super skReify: aConstraintStore ) rest: (aConstraintStore reify: rest)