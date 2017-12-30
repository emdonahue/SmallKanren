undelay
testUndelayComplete
	"Undelay Complete => DPlus"
	| g |
	g := g := (x carCdrIn: [ :a :d | SKGoal succeed | SKGoal succeed ]) & (y carCdrIn: [ :a :d | SKGoal succeed | SKGoal succeed ]).
	self assert: g step isDelayed.
	self assert: g step constraints size equals: 2.
	self assert: g step step isDelayedPlus.
	self assert: g step step step isComplete.
	self assert: g step step step step isComplete.
	self assert: g step step step step step isDelayed.
	self assert: g step step step step step step isComplete.
	self assert: g step step step step step step step isState.
	self assert: g step step step step step step step step isEmptyStream