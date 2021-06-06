*SmallKanren-Core
carCdro: aBlock
	^ self 
		ifEmpty: [ SKGoal fail ] 
		ifNotEmpty: [ :s | ^ (SKGuardedFreshPair block: aBlock) groundGoal: s ].