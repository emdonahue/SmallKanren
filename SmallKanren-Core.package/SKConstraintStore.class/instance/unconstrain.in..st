constraining
unconstrain: aVar in: aState
	"Drops the constraints on aVar from the ConstraintStore."
	self integrityCheck.
	^ aState copy constraints: (self remove: aVar)