comparing
= aConstraint
	aConstraint class = self class ifFalse: [ ^ false ].
	^ first = aConstraint first and: [ rest = aConstraint rest ].