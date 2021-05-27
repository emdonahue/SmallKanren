merging
compress: aFreshClause
	<type: #SKGuardedFreshGoal returns: #(OrC SKGuardedFreshGoal SKUnsatisfiableConstraint)>
	^ SKGuardedMultiFresh first: self rest: aFreshClause.