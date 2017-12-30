*SmallKanren-Core
absento: aTerm
	^ self ifEmpty: SKGoal succeed ifNotEmpty: [ :s | (s peek absento: aTerm) and: s step absento: aTerm ]