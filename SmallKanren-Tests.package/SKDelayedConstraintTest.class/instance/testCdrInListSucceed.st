cdrIn
testCdrInListSucceed
	"Test that delayed goals undelay when unified with ground."

	| g s |
	g := 1 cons car: 1 cdro: [ :d | x === d ].
	s := g run: SKState new.
	self deny: s isDelayed.
	self assert: s => x equals: Cons empty