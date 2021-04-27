testing
= aConstraint
	aConstraint class = self class ifFalse: [ ^ false ].
	^ right = aConstraint right.