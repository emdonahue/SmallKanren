checking
runAgainst: aValue in: aState
	^ ((((type runAgainst: aValue in: aState) ) checkConstraint: exclusion against: aValue)
		checkConstraint: disequality
		against: aValue) checkConstraint: delayed against: aValue