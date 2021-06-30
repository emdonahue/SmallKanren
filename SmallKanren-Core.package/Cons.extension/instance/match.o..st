*SmallKanren-Core
match: aPattern o: aBlock
	^ self ifEmpty: 
		SKGoal fail 
		ifNotEmpty: [ SKGuardedMultiMatch externals: {self} pattern: {aPattern} block: aBlock ].