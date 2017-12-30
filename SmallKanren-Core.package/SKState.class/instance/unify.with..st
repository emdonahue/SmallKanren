unifying
unify: left with: right
	| a b |
	a := substitution walk: left.
	b := substitution walk: right.
	a == b
		ifTrue: [ ^ self ].	"A value trivially unifies with itself. This is important to prevent unbound variables from self-unifying."
	^ a skUnify: b in: self