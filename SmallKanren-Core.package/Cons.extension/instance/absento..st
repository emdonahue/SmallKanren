*SmallKanren-Core
absento: aTerm
	^ self ifEmpty: SKGoal succeed ifNotEmpty: [ :s | (s car absento: aTerm) and: s cdr absento: aTerm ]