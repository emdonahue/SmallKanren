cdrcarin
testCdrCarInConstraint
	"Test that delayed goals produce delayed states with the appropriately constrained variable."

	| g s |
	g := x carCdrIn2: [ :a :d | a === 1 & d === Cons empty ].
	s := g run: SKState new.
	self assert: s isDelayed.
	self assert: s suspendedVars size equals: 1