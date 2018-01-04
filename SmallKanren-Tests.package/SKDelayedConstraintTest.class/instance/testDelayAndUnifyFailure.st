single
testDelayAndUnifyFailure
	"The delay can return anything when fired."

	| g |
	g := (x carCdrIn: [ :a :d | SKGoal fail ]) & (x === (y cons: z)).
	self assert: g step isEmptyStream