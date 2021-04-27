single
testDelayAndUnifyFail
	"Unifying a delayed constraint with a non-list should fail."

	| g |
	g := (x carCdrIn: [ :a :d | a === 1 & (d === Cons empty) ])  & (x === 1).
	self assert: g step isFailure