conjoined
testUnifyAndConjoinFail
	"Conjoined === Primitive => Fail"

	| g |
	g := g :=  (x === 1) & (x carCdro: [ :a :d | a === 1 ]) asGoal & (x carCdro: [ :a :d | d === Cons empty ]).
	self assert: g step isFailure