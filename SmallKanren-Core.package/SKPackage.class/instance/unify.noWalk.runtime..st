unifying
unify: aVar noWalk: aVal runtime: aRuntime
	<todo> "Performance test == checks before both and between the walks to short circuit extra walking."
	aVar == aVal ifTrue: [ ^ self runtime: aRuntime ].	"A value trivially unifies with itself. This is important to prevent unbound variables from self-unifying."
	^ (aVar skUnify: aVal in: self runtime: aRuntime) runtime: aRuntime.