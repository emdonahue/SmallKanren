merging
extend: aVar in: aState
	"Called after all constraint merging is finished to simply extend the ConstraintStore with the current constraint, no questions asked. In this case, the constraints have found themselve to be in conflict and so the state fails."

	^ SKStream failure.