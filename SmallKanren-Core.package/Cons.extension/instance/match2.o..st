*SmallKanren-Core
match2: aPattern o: aBlock
	^ self ifEmpty: 
		SKGoal fail 
		ifNotEmpty: [ ((SKGuardedMatch fromPattern: aPattern block: aBlock) groundGoal: self) ].