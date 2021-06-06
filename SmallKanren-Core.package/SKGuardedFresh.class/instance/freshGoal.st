goal
freshGoal
	| p |
	p := self pattern.
	^ (SKUnificationNoWalk left: var right: p) & (self freshGoal: p).