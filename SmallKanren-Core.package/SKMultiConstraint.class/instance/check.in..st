checking
check: aValue in: aState
	^ ((((type check: aValue in: aState) ) checkConstraint: exclusion against: aValue)
		checkConstraint: disequality
		against: aValue) checkConstraint: delayed against: aValue