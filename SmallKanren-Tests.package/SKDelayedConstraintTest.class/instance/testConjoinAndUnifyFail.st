conjoined
testConjoinAndUnifyFail
	"Conjoined === Primitive => Fail"

	| g |
	g := g := (x carCdrIn: [ :a :d | a === 1 ]) asGoal & (x carCdrIn: [ :a :d | d === Cons empty ]) & (x === 1).
	self assert: g step isEmptyStream