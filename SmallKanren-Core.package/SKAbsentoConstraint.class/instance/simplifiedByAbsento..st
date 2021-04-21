simplifying
simplifiedByAbsento: anAbsento
	(anAbsento excludes: excluded) ifTrue: [ ^ SKConstraint satisfied ].