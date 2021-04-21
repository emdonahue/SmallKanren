simplifying
simplifiedByDisequality: aDisequality
	aDisequality right = right ifTrue: [ ^ SKConstraint satisfied ].