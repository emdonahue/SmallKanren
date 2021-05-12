simplifying
simplifiedByBooleano: aBooleano
	true == self val ifTrue: [ ^ SKUnificationConstraint new term: false ].
	false == self val ifTrue: [ ^ SKUnificationConstraint new term: true ].
	^ self val isSKVar ifTrue: self ifFalse: SKConstraint satisfied.