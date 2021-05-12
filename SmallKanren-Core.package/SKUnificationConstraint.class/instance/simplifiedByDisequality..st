simplifying
simplifiedByDisequality: aDisequality
	term = aDisequality val ifTrue: [ ^ SKConstraint unsatisfiable ].