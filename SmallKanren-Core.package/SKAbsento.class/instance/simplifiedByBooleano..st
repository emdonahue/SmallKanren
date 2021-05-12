simplifying
simplifiedByBooleano: aBooleano
	(self isAbsent: true) ifTrue: 
		[ ^ (SKUnificationConstraint new term: false) simplifiedByAbsento: self ].
	(self isAbsent: false) ifTrue: 
		[ ^ (SKUnificationConstraint new term: true) simplifiedByAbsento: self ].
	^ SKConstraint satisfied. "Since it's a boolean, it's not a list, so throw out the absento."