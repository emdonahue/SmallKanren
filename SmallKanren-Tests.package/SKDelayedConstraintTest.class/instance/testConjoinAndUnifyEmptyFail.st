conjoined
testConjoinAndUnifyEmptyFail
	"Conjoined === Empty => Fail"

	| g |
	g := g := (x carCdro: [ :a :d | a === 1 ]) asGoal & (x carCdro: [ :a :d | d === Cons empty ]) & (x === Cons empty).
	self assert: g step isFailure