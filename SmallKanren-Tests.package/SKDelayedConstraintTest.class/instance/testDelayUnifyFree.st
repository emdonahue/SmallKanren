single
testDelayUnifyFree
	"Unifying a free variable with a delay on it should transfer the constraint."

	| g s |
	g := (x carCdrIn: [ :a :d | a === 1 & (d === Cons empty) ]).
	s := g run: SKState new.
	self assert: s isDelayed.
	s := s unify: x with: y.
	self assert: s isDelayed.