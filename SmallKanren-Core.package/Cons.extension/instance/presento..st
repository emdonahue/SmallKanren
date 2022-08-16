*SmallKanren-Core
presento: aTerm
	self = aTerm ifTrue: [ ^ SKConstraint satisfied ].
	self ifEmpty: [ ^ SKConstraint unsatisfiable ].
	^ (self car presento: aTerm) presento: aTerm in: self cdr.