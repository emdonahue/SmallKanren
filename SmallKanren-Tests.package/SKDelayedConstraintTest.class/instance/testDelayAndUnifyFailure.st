single
testDelayAndUnifyFailure
	"The delay can return anything when fired."

	| g |
	g := (x carCdro: [ :a :d | SKGoal fail ]) & (x === (y cons: z)).
	self assert: g step isFailure