mplus
testDelayOrComplete
	"Delay + Complete(Delay) = Complete(DPlus)"

	| delay |
	delay := x carCdrIn: [ :a :d | a === 1 & (d === 2) ].
	self assert: (x === 1 | delay | delay) step isComplete.
	self assert: (x === 1 | delay | delay) step step isDelayedPlus.
	delay := x carCdrIn: [ :a :d | a === 1 & (d === 2) ].
	self assert:(delay |  (x === 1 | delay)) step isComplete.
	self assert:(delay |  (x === 1 | delay)) step step isDelayedPlus.