delayed
testConstrainingPreservesDelayedCache
	"Constraining a Delayed should preserve its delayed variable cache."

	| s |
	s := ( (x carCdrIn: [ :a :d | (a cons: d) === 1 cons ]) & (y =/= 1)) step.
	self assert: (s constraints at: x) isDelayed.
	self assert: (s delayedVars car) equals: x.