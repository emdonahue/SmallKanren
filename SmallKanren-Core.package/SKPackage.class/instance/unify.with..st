unifying
unify: aVar with: aVal
	^ self unify: (substitution walk: aVar) noWalk: (substitution walk: aVal).