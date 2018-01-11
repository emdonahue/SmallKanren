delaying
andDelayedGoal: aDelayedConstraint onPair: aVar
	<type: #SKDelayedConstraint type: #(AllC SKVar) returns: #SKGoal>
	^ (aDelayedConstraint goal: aVar) & self