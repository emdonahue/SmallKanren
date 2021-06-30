goal
freshGoal
	<todo> "walk unnecessary once we are on the constraint firing system."
	| p |
	p := self pattern.
	^ (externals asConsTree===p) & (self freshGoal: p).