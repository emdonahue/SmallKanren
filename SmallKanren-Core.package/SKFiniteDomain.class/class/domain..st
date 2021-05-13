accessing
domain: aDomain
	aDomain isEmpty ifTrue: [ ^ SKConstraint unsatisfiable ].
	aDomain size = 1 ifTrue: [ ^ SKUnificationConstraint unification: aDomain first ].
	^ self new domain: aDomain.