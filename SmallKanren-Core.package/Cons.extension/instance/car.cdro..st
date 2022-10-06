*SmallKanren-Core
car: aCar cdro: aBlock
	^ self ifEmpty: [SKGoal fail]
		ifNotEmpty: [ :s |
			(s car === aCar) &
				(SKGuardedMultiMatch 
				expandBlock: aBlock 
				withVars: {s cdr})].