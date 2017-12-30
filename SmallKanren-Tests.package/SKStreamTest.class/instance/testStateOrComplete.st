mplus
testStateOrComplete
	"State + Complete = Complete(Complete)"

	self assert: (succeed | (succeed | succeed)) step isComplete.
	self assert: (succeed | (succeed | succeed)) step step isComplete.
	self assert: (succeed | succeed | succeed) step isComplete.
	self assert: (succeed | succeed | succeed) step step isComplete