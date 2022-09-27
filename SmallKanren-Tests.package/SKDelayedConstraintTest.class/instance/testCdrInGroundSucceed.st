cdrIn
testCdrInGroundSucceed
	"Test that delayed goals undelay when unified with ground."

	| g s |
	g := (x === 1 cons) & (x car: 1 cdro: [ :d | SKGoal succeed ]) .
	s := g run: SKSubstitution new.
	self deny: s isDelayed.
	self assert: s => x equals: 1 cons