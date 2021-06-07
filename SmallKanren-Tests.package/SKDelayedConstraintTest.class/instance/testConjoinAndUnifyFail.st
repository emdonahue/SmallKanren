conjoined
testConjoinAndUnifyFail
	"Conjoined === Primitive => Fail"

	| g |
	g := g := (x carCdro: [ :a :d | a === 1 ]) asGoal & (x carCdro: [ :a :d | d === Cons empty ]) & (x === 1).
	self assert: g step isFailure