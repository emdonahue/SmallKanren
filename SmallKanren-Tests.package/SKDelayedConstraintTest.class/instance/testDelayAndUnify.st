single
testDelayAndUnify
	"Unifying a variable with a delay on it instantly fires the constraint."

	| g s |
	g := (x carCdro: [ :a :d | a === 1 & (d === Cons empty) ])  & (x === (y cons: z)).
	s := g run: SKSubstitution new.
	self assert: s isState.
	self assert: s => x equals: 1 cons	"Forcing is unnecessary because the variable was already in the substitution."