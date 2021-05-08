laziness
eager: aVar in: aState
	| names a d g |
	names := block argumentNames.
	a := (SKVar tag: (names at: 1)).
	d := (SKVar tag: (names at: 2)).
	g := block value: a value: d.
	g isFailure ifTrue: [ ^ SKStream failure ].
	^ SKLazyFreshGoal new goal: g; state: ((aState removeConstraint: aVar) extend: aVar with: (a cons: d)).