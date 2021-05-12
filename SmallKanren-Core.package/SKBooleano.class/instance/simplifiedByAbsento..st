simplifying
simplifiedByAbsento: anAbsento
	(anAbsento isAbsent: true) ifTrue: 
		[ ^ (SKUnificationConstraint new term: false) simplifiedByAbsento: anAbsento ].
	(anAbsento isAbsent: false) ifTrue: 
		[ ^ (SKUnificationConstraint new term: true) simplifiedByAbsento: anAbsento ].