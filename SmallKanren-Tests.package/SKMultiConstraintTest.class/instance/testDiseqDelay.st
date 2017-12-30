delayed
testDiseqDelay
	"Delays merge into disequalities."
	| s |
	s := (x =/= 1 & (x carCdrIn: [ :a :d | (a cons: d) === 1 cons ])) step.
	self assert: (s constraints at: x) isMulti.
	self assert: (s constraints at: x) isDelayed.
	self assert: (s constraints at: x) isDisequality