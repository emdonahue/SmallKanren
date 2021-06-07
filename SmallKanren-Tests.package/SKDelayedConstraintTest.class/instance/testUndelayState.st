tests
testUndelayState
	"Undelay State => State"

	| g |
	g := g := (x carCdro: [ :a :d | SKGoal succeed ]) & (y carCdro: [ :a :d | SKGoal succeed ]).
	self assert: g step isDelayed.
	self assert: g step suspendedVars size equals: 2.
	self assert: g step step isDelayed.
	self assert: g step step step isState.
	self assert: g step step step step isFailure