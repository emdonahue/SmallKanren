*SmallKanren-Core
caro: aCar cdro: aCdr
	^ self ifEmpty: SKGoal fail ifNotEmpty: [ :s | s peek === aCar andUnify: s step with: aCdr ]