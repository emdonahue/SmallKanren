conjoined
testUnifyEmptyConjoinAndFail
	"Conjoined === Empty => Fail"

	| g |
	g := g := (x === Cons empty) & (x carCdro: [ :a :d | a === 1 ]) asGoal & (x carCdro: [ :a :d | d === Cons empty ]).
	self assert: g step isFailure