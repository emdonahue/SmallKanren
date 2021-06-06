unifying
unify: aVar with: aVal runtime: aRuntime
	^ self unify: (substitution walk: aVar) noWalk: (substitution walk: aVal) runtime: aRuntime.