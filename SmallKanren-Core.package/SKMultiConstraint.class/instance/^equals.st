comparing
= aMultiConstraint
	aMultiConstraint class = self class
		ifFalse: [ ^ false ].
	^ type = aMultiConstraint type & (disequality = aMultiConstraint disequality) & (exclusion = aMultiConstraint exclusion)