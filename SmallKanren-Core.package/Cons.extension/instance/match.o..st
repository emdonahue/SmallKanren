*SmallKanren-Core
match: aPattern o: aBlock
	^ self ifEmpty: 
		SKGoal fail 
		ifNotEmpty: [ ((SKGuardedMatch fromPattern: aPattern block: aBlock) groundGoal: self) ].