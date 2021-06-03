laziness
freshGoal
	^ (clauses inject: SKGoal succeed into: [ :g :c | g & (c freshSubgoal: pattern) ifFail: [ ^ SKGoal fail ] ]) asGoal.