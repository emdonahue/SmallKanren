single
testDelayUnifyOtherFree
	"Delay should result no matter which direction we bind free in."

	| g s |
	g := x carCdro: [ :a :d | a === 1 & (d === Cons empty) ].
	s := g run: SKState new.
	self assert: s isDelayed.
	s := s unify: y with: x.
	self assert: s isDelayed