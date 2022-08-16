*SmallKanren-Core
presento: aTerm
	self = aTerm ifTrue: [ ^ SKConstraint satisfied ].
	^ SKConstraint unsatisfiable.