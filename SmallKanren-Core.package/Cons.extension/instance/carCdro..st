*SmallKanren-Core
carCdro: aBlock
	^ self ifEmpty: SKGoal fail
		ifNotEmpty: [ :s |
			SKGuardedMultiMatch 
				expandBlock: aBlock 
				withVars: {s car. s cdr}].