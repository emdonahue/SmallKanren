cdrIn
testCdrInListFail
	"Test that delayed goals undelay when unified with ground."

	| g s |
	g := 1 cons car: 2 cdrIn: [ :d | x === d ].
	s := g run: SKState new.
	self assert: s isEmptyStream.