conjoined
testUnifyAndConjoin
	"Unify & Conjoined => Pass"

	| g |
	g := g :=  (x === 1 cons) & ((x carCdrIn: [ :a :d | a === 1 ]) asGoal & (x carCdrIn: [ :a :d | d === Cons empty ])).
	self assert: g step => x equals: 1 cons