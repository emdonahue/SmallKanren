debugging
= aDisequality
	aDisequality asConstraint class = self class ifFalse: [ ^ false ].
	^ val = aDisequality asConstraint val.