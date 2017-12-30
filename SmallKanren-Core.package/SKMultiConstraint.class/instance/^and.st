debugging
& aMultiConstraint
	^ self class new
		type: (type ifSatisfied: aMultiConstraint asMultiConstraint type);
		disequality: (disequality ifSatisfied: aMultiConstraint asMultiConstraint disequality);
		exclusion: (exclusion ifSatisfied: aMultiConstraint asMultiConstraint exclusion)