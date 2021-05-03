debugging
= aConstraint
	aConstraint asConstraint class = self class ifFalse: [ ^ false ].
	^ right = aConstraint asConstraint right.