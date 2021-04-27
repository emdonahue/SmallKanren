checking
checkAgainst: aValue in: aState

	^ ((((type checkAgainst: aValue in: aState) ) checkConstraint: exclusion against: aValue)
		checkConstraint: disequality
		against: aValue) checkConstraint: delayed against: aValue