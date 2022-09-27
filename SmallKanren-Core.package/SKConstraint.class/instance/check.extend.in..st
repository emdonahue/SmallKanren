checking
check: aVal extend: aVar in: aState
	<type:#VoidC type:#SKVar type:#isState type: #isStateOrFailure>
	<todo> "When the constraint store supports it we can look up and remove in same action. however, it might also be wasted effort if we will only fail the constraint anyway. Also, in theory we dont need to remove constraint until after the check succeeds, but constraints that fire unifications like plus may have issues if other plus constraints recursively fire them and the constraint is still there... endless loop."
	"Primary interface from the ConstraintStore to the Constraints. Runs the constraints then removes the variable they were assigned to, as it is now ground."
	^ (self check: aVal in: (aState removeConstraint: aVar)) extend: aVar with: aVal.