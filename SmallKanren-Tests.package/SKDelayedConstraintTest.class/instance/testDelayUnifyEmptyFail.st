single
testDelayUnifyEmptyFail
	"Unifying a delayed constraint with an empty list should fail."

	| g |
	g := (x carCdro: [ :a :d | a === 1 & (d === Cons empty) ]) & (x === Cons empty).
	self assert: g step isFailure