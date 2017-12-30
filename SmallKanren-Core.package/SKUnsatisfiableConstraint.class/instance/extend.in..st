merging
extend: aVar in: aState
	"Called after all constraint merging is finished to simply extend the ConstraintStore with the current constraint, no questions asked."

	^ SKEmptyStream singleton