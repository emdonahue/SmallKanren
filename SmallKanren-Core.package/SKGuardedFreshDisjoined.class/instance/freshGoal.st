laziness
freshGoal
	^ (clauses inject: SKGoal succeed into: [ :g :c | g & (c freshSubgoal: pattern) ]) asGoal.