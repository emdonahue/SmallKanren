laziness
freshGoal: aPattern
	^ clauses inject: SKGoal succeed into: [ :g :c | g & (c freshGoal: aPattern) ifFail: [ ^ SKGoal fail ] ].