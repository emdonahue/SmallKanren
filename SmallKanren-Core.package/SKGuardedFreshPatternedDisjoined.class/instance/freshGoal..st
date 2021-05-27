laziness
freshGoal: aSubstitution
	^ clauses inject: SKGoal succeed into: [ :g :c | g & (c freshSubgoal: (aSubstitution reify: pattern)) ].