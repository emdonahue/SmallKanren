merging
simplify: aConstraint
	| c |
	c := first simplify: aConstraint.
	c isSatisfied | c isUnsatisfiable ifTrue: [ ^ c ].
	^ rest simplify: c.