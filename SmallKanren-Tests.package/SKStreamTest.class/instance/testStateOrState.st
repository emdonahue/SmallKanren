mplus
testStateOrState
	"State + State = Complete(State)"
	self assert: (SKGoal succeed | SKGoal succeed) step isComplete.