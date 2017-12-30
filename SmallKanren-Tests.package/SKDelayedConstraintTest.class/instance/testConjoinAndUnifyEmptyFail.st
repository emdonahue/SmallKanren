conjoined
testConjoinAndUnifyEmptyFail
	"Conjoined === Empty => Fail"

	| g |
	g := g := (x carCdrIn: [ :a :d | a === 1 ]) asGoal & (x carCdrIn: [ :a :d | d === Cons empty ]) & (x === Cons empty).
	self assert: g step isEmptyStream