constraining
checkConstraintsOn: aVar against: aValue in: aState
	"Called by state to check the constraint and return a new state if it passes, or a failed state if it does not."


	^ (self at: aVar) checkAgainst: aValue in: aState