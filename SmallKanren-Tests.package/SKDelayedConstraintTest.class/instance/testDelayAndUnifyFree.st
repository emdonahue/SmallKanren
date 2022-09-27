single
testDelayAndUnifyFree
	"Unifying a free variable with a delay on it should transfer the constraint."

	| g s |
	g := (x carCdro: [ :a :d | a === 1 & (d === Cons empty) ]) & (x === y).
	s := g run: SKSubstitution new.
	self assert: s isDelayed.