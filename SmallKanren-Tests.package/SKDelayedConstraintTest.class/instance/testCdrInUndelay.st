cdrIn
testCdrInUndelay
	"Test that delayed goals undelay when no more unifications can be made."

	| g s |
	g := x car: 1 cdrIn: [ :d | d === Cons empty ].
	s := g run: SKState new.
	self assert: s isDelayed.
	s := s undelaystep.
	self deny: s isDelayed.
	self assert: s => x equals: 1 cons.