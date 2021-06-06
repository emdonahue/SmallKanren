*SmallKanren-Core
carCdrResto: aBlock
	^ self 
		ifEmpty: SKGoal fail 
		ifNotEmpty: [ :s | (SKGuardedFreshAList block: aBlock) groundGoal: s ].