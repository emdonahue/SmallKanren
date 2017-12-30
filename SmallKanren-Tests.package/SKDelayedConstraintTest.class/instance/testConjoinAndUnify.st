conjoined
testConjoinAndUnify
	"Conjoined & Unify => Pass"

	| g |
	g := g := (x carCdrIn: [ :a :d | a === 1 ]) asGoal & (x carCdrIn: [ :a :d | d === Cons empty ]) & (x === 1 cons).
	self assert: g step => x equals: 1 cons