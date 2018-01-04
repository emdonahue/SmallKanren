unifying
unify: left with: right
	| a b |
	a := self substitution walk: left.
	b := self substitution walk: right.
	a == b
		ifTrue: [ ^ self ].	"A value trivially unifies with itself. This is important to prevent unbound variables from self-unifying."
	^ a skUnify: b in: self