as yet unclassified
log: a sum: b
	"Sum log probabilities a and b. May benefit from specialized implementation of log1p."
	"If overflow or underflow, use logExpSum trick to approximate sum of log probabilities. Scale log probabilities right by biggest log, do the addition, and scale back."
	a = b ifTrue: [ ^ a + 2 ln ]. "Handles both negative infinity case, which breaks approximation."
	^ (a max: b) + ((a - b) abs negated exp + 1) ln.