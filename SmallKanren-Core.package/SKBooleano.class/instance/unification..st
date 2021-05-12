as yet unclassified
unification: aVal 
	true == aVal ifTrue: [ ^ SKUnificationConstraint new term: false ].
	false == aVal ifTrue: [ ^ SKUnificationConstraint new term: true ].
	^ SKConstraint satisfied.