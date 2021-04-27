single
testDelayUnifyEmptyFail
	"Unifying a delayed constraint with an empty list should fail."

	| g |
	g := (x carCdrIn: [ :a :d | a === 1 & (d === Cons empty) ]) & (x === Cons empty).
	self assert: g step isFailure