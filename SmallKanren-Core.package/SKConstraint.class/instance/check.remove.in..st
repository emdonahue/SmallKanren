checking
check: aVar remove: aVal in: aState
	"Primary interface from the ConstraintStore to the Constraints. Runs the constraints then removes the variable they were assigned to, as it is now ground."
	^ (self check: aVal in: aState) removeConstraint: aVar.