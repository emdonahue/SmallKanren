*SmallKanren-Core
carCdrIn: aBlock
	^ self ifEmpty: [SKGoal fail] ifNotEmpty: [ :s | ^ aBlock value: s peek value: s step ]