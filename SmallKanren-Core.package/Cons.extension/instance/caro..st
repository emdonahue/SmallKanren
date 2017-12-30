*SmallKanren-Core
caro: aVar
	^ self ifEmpty: SKGoal fail ifNotEmpty: [ :s | s peek === aVar ]