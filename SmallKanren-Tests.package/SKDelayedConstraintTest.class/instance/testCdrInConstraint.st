cdrIn
testCdrInConstraint
	"Test that delayed goals produce delayed states with the appropriately constrained variable."

	| g s |
	g := x car: 1 cdro: [ :d | d === Cons empty ].
	s := g run: SKState new.
	self assert: s isDelayed.
	self assert: s suspendedVars size equals: 1