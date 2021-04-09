constraining
unconstrain: aVar in: aState
	<type: #SKVar type: #isMaybeStream returns: #integrityCheck>	
	"Drops the constraints on aVar from the ConstraintStore."
	"| tmp |
	tmp := aState copy constraints: (self remove: aVar).
	self halt.
	tmp integrityCheck ifFalse: [ self halt. ]."
	^ aState copy constraints: (self remove: aVar)