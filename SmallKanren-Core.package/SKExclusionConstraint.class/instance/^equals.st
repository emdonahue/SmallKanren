debugging
= aConstraint
	aConstraint class = self class ifFalse: [ ^ false ].
	^ excluded = aConstraint excluded