debugging
= aConstraint
	aConstraint asConstraint class = self class ifFalse: [ ^ false ].
	^ val = aConstraint asConstraint val.