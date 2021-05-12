simplifying
simplifiedByDisequality: aDisequality
	true == aDisequality val ifTrue: [ ^ SKUnificationConstraint new term: false ].
	false == aDisequality val ifTrue: [ ^ SKUnificationConstraint new term: true ].