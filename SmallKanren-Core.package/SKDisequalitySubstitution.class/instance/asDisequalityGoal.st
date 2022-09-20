disequality
asDisequalityGoal
	var ifNil: [ ^ SKGoal fail ].
	^ SKConstraintGoal var: var constraint: self asDisequality.