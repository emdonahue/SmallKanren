comparing
= aConstraint
	aConstraint isMultiConstraint ifFalse: [ ^ false ].
	^ first = aConstraint first and: [ rest = aConstraint rest ].