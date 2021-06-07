conjoined
testConjoinAndUnify
	"Conjoined & Unify => Pass"

	| g |
	g := g := (x carCdro: [ :a :d | a === 1 ]) asGoal & (x carCdro: [ :a :d | d === Cons empty ]) & (x === 1 cons).
	self assert: g step => x equals: 1 cons