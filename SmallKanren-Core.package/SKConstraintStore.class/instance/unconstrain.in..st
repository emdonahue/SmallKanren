constraining
unconstrain: aVar in: aState
	<type: #SKVar type: #isMaybeStream returns: #integrityCheck>	
	"Drops the constraints on aVar from the ConstraintStore."
	
	^ aState copy constraints: (self remove: aVar)