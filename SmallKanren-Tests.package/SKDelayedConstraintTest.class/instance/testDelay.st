single
testDelay
	"Test that delayed goals produce delayed states with the appropriately constrained variable."
	| g s |
	g := x carCdrIn: [ :a :d | a === 1 & (d === Cons empty) ].
	self assert: g isDelayedGoal.
	s := g run: SKState new.
	self assert: s isDelayed.
	self assert: (s constraints at: x) isDelayedGoalConstraint