mplus
testDPlusOrCompletePlus
	"DPlus + Complete(DPlus) = Complete(DPlus)."

	| delay |
	delay := x carCdrIn: [ :a :d | a === 1 & (d === 2) ].
	self assert: ((delay | delay) | (x === 1 | (delay | delay))) step isComplete.
	self assert: ((delay | delay) | (x === 1 | (delay | delay))) step step isDelayedPlus.
	self assert: (x === 1 | (delay | delay) | (delay | delay)) step isComplete.
	self assert: (x === 1 | (delay | delay) | (delay | delay)) step step isDelayedPlus