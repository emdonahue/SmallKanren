simplifying
extend: aVar previousConstraint: aConstraint in: aState
	"Called after all constraint merging is finished to simply extend the ConstraintStore with the current constraint, no questions asked. We have no more need of the previous constraint once we have merged."
	^ aState extend: aVar constraint: self