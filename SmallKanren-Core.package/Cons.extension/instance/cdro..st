*SmallKanren-Core
cdro: aCons
	^ self ifEmpty: SKGoal fail
		ifNotEmpty: [ :s |
			s cdr === aCons].