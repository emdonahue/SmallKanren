*SmallKanren-Core
absento: aValue
	^ self = aValue
		ifTrue: SKGoal fail
		ifFalse: SKGoal succeed