undelay
testUndelayState
	"Undelay State => State"

	| g |
	g := g := (x carCdrIn: [ :a :d | SKGoal succeed ]) & (y carCdrIn: [ :a :d | SKGoal succeed ]).
	self assert: g step isDelayed.
	self assert: g step constraints size equals: 2.
	self assert: g step step isDelayed.
	self assert: g step step step isState.
	self assert: g step step step step isEmptyStream