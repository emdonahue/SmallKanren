checking
checkVar: bVal extend: aVar in: aState
	<type:#ObjectC type:#SKVar type:#SKPackage type: #(OrC SKPackage SKFailure)>
	<todo> "When the constraint store supports it we can look up and remove in same action. however, it might also be wasted effort if we will only fail the constraint anyway."
	"Primary interface from the ConstraintStore to the Constraints. Runs the constraints then removes the variable they were assigned to, as it is now ground."
	^ ((self check: bVal in: aState) removeConstraint: aVar) extend: aVar noOccursCheck: bVal.