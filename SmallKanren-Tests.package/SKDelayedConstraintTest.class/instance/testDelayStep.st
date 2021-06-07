single
testDelayStep
	"Stepping through a delay fires it."
	| g |
	g := x carCdro: [ :a :d | a === 1 & (d === Cons empty) ].
	self assert: g step isDelayed.
	self assert: g step step isState.
	self assert: g step step => x equals: 1 cons