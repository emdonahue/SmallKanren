goal
freshGoal
	<todo> "walk unnecessary once we are on the constraint firing system."
	| p |
	p := self pattern.
	^ (var asConsTree===p) & (self freshGoal: p).