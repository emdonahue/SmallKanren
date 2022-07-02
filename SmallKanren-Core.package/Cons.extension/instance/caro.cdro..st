*SmallKanren-Core
caro: aCar cdro: aCdr
	^ self ifEmpty: SKGoal fail ifNotEmpty: [ :s | s car === aCar andUnify: s cdr with: aCdr ]