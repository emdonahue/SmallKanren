unifying
unify: aVar with: aVal runtime: aRuntime
	<todo> "Performance test == checks before both and between the walks to short circuit extra walking."
	| a b |
	a := self substitution walk: aVar.
	b := self substitution walk: aVal.
	a == b ifTrue: [ ^ self ].	"A value trivially unifies with itself. This is important to prevent unbound variables from self-unifying."
	^ a skUnify: b in: self runtime: aRuntime.