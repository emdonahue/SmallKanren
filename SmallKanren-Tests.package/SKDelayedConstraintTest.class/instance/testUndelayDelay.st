undelay
testUndelayDelay
	"Undelay Delay => Delay"

	| g |
	g := g := (x carCdrIn: [ :a :d | a carCdrIn: [ :b :c | SKGoal succeed ] ]) & (y carCdrIn: [ :a :d | a carCdrIn: [ :b :c | SKGoal succeed ] ]).
	self assert: g step isDelayed.	"Initial state"
	self assert: g step constraints size equals: 2.
	self assert: g step step isDelayed.	"Fired one, introduced new one."
	self assert: g step constraints size equals: 2.
	self assert: g step step step isDelayed.	"Fired one, either introduced new one or completed."
	self assert: g step step step step isDelayed.	"Either removed one, or reintroduced one."
	self assert: g step step step step step isState.	"Removed last."
		self assert: g step step step step step step isFailure	"Removed last."
		