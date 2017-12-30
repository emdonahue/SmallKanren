conjoined
testUnifyEmptyConjoinAndFail
	"Conjoined === Empty => Fail"

	| g |
	g := g := (x === Cons empty) & (x carCdrIn: [ :a :d | a === 1 ]) asGoal & (x carCdrIn: [ :a :d | d === Cons empty ]).
	self assert: g step isEmptyStream