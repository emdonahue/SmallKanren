cdrIn
testCdrInListFail
	"Test that delayed goals undelay when unified with ground."

	| g s |
	g := 1 cons car: 2 cdro: [ :d | x === d ].
	s := g run: SKSubstitution new.
	self assert: s isFailure.