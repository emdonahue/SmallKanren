constraining
check: aVar against: aValue in: aState
	<type: #SKVar type: #ObjectC type: #SKState returns: #(OrC SKState SKFailure)>
	"Called by state to check the constraint and return a new state if it passes, or a failed state if it does not. Throw away the constraints on this Var when done, as it is no longer free and can have no constraints."

	^ ((self at: aVar) checkAgainst: aValue at: aVar in: aState) constraints: (self remove: aVar).