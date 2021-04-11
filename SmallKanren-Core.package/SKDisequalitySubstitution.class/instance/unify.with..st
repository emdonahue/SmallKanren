unifying
unify: left with: right
	| a b |
	a := substitution walk: left.
	b := substitution walk: right.
	a == b
		ifTrue: [ ^ self ].	"Prevent free vars from unifying with self."
	^ a skUnify: b in: self