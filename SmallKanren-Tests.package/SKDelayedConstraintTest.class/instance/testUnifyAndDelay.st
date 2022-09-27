single
testUnifyAndDelay
	"Delays fire immediately if variable already unified."
	| g s |
	g := x === (y cons: z) & (x carCdro: [ :a :d | a === 1 & (d === Cons empty) ]).
	s := g run: SKSubstitution new.
	self assert: s isState.
	self assert: s => x equals: 1 cons	"Forcing is unnecessary because the variable was already in the substitution."