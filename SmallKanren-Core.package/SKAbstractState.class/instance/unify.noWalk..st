substitution
unify: aVar noWalk: aVal

	aVar == aVal ifTrue: [ ^ self ]. "Prevents self unification"
	^ aVar skUnify: aVal in: self