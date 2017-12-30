single
testDelayAndUnifyFree
	"Unifying a free variable with a delay on it should transfer the constraint."

	| g s |
	g := (x carCdrIn: [ :a :d | a === 1 & (d === Cons empty) ]) & (x === y).
	s := g run: SKState new.
	self assert: s isDelayed.