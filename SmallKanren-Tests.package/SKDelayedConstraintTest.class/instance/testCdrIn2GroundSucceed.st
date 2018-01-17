cdrcarin
testCdrIn2GroundSucceed
	"Test that delayed goals undelay when unified with ground."

	| g s |
	g := x === 1 cons & (x carCdrIn2: [:a :d | self assert: a equals: 1. self assert: d equals: Cons empty. SKGoal succeed ]).
	s := g run: SKState new.
	self deny: s isDelayed.
	self assert: s => x equals: 1 cons