*SmallKanren-Core
keyIsAbsento: aKey
	^ self ifEmpty: SKGoal succeed ifNotEmpty: [ :s | (s car carCdro: [ :a :d | aKey =/= a ]) andKey: aKey isAbsento: s cdr ]