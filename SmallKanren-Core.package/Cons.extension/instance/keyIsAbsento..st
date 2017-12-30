*SmallKanren-Core
keyIsAbsento: aKey
	^ self ifEmpty: SKGoal succeed ifNotEmpty: [ :s | (s peek carCdrIn: [ :a :d | aKey =/= a ]) andKey: aKey isAbsento: s cdr ]