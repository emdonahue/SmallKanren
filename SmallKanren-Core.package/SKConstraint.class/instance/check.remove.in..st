checking
check: aVar remove: aVal in: aState
	<type:#SKVar type:#ObjectC type:#SKState returns: #(OrC SKState SKFailure)>
	<todo> "When the constraint store supports it we can look up and remove in same action."
	"Primary interface from the ConstraintStore to the Constraints. Runs the constraints then removes the variable they were assigned to, as it is now ground."
	^ (self check: aVal in: aState) removeConstraint: aVar.