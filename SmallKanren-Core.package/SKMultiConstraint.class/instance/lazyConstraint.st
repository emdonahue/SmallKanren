laziness
lazyConstraint
	first isLazy ifTrue: [ ^ first ].
	^ rest lazyConstraint.