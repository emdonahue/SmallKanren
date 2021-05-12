simplifying
simplifiedByAbsento: anAbsento
	(anAbsento isAbsent: term) ifTrue: [ ^ SKConstraint unsatisfiable ].