reifying
skReify: aConstraintStore
	<todo> "reifier probably needs to thread more information through"
	^ (super skReify: aConstraintStore ) next: (aConstraintStore reify: next)