delayed
testDelayDiseq
	"Disequalities merge into delays."

	| s |
	s := (  (x carCdrIn: [ :a :d | (a cons: d) === 1 cons ]) & (x =/= 1)) step.
	self assert: (s constraints at: x) isMulti.
	self assert: (s constraints at: x) isDelayed.
	self assert: (s constraints at: x) isDisequality