*SmallKanren-Core
carCdrIn2: aBlock
	^ self ifEmpty: [ SKGoal fail ] ifNotEmpty: [ :cons | aBlock value: cons car value: cons cdr ]