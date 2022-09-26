unifying
unify: aVar noWalk: aVal

	"Performance test == checks before both and between the walks to short circuit extra walking."

	<todo>
	aVar == aVal ifTrue: [ ^ self ]. "A value trivially unifies with itself. This is important to prevent unbound variables from self-unifying."
	^ aVar skUnify: aVal in: self