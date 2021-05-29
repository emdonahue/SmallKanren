*SmallKanren-Core
car: aCar cdro: aBlock
	<todo> "can wait until === succeeds to find out if we need to call the block"
	^ self ifEmpty: SKGoal fail ifNotEmpty: [ :s | s peek === aCar & (aBlock value: s step) ]