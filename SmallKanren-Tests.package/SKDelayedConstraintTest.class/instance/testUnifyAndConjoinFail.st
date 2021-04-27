conjoined
testUnifyAndConjoinFail
	"Conjoined === Primitive => Fail"

	| g |
	g := g :=  (x === 1) & (x carCdrIn: [ :a :d | a === 1 ]) asGoal & (x carCdrIn: [ :a :d | d === Cons empty ]).
	self assert: g step isFailure