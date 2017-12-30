initialization
testStateOrMplus
	"State + MPlus = Complete(MPlus)"

	self assert: (succeed | (lazy | lazy)) step isComplete.
	self assert: (succeed | (lazy | lazy)) step step isDelayedPlus.
	self assert: (lazy | lazy | succeed) step isComplete.
	self assert: (lazy | lazy | succeed) step step isDelayedPlus