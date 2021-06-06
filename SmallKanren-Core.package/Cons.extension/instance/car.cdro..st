*SmallKanren-Core
car: aCar cdro: aBlock
	^ self 
		ifEmpty: SKGoal fail 
		ifNotEmpty: [ :s | ^ (SKGuardedFreshCar car: aCar block: aBlock) groundGoal: s ].