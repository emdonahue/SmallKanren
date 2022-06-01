probability
condition: aState
	"If the returning state contains an extended substitution relative to the conditioning state, it will return itself, in which case it should be mplused up the tree and the conditioning state should be reused with the rest of the stream. If the substitutions (and constraints, etc) match, the returned state will be merged and can be threaded through the rest of the stream."
	(left hasEquivalentConstraints: aState) ifTrue: [ ^ right condition: (left mergePseudoCounts: aState) ].
	^ left + (right condition: aState).