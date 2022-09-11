checking
check: aVal remove: aVar in: aState
	<type: #ObjectC type: #SKVar type: #SKPackage type: #(OrC SKState SKFailure)>
	<todo> "When the constraint store supports it we can look up and remove in same action. however, it might also be wasted effort if we will only fail the constraint anyway."
	"Primary interface from the ConstraintStore to the Constraints. Runs the constraints then removes the variable they were assigned to, as it is now ground."
	self halt.
	^ (self check: aVal in: aState) removeConstraint: aVar.