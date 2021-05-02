constraining
=/= aVal
	"The disequality constraint ensures that in no succeeding answer will this variable ever be equal to the value or variable it is constrained by."
	^ SKConstraintGoal var: self constraint: (SKConstraint dis: self equals: aVal).