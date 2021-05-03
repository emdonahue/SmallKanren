unifying
unify: left with: right
	^ self unify: (substitution walk: left) noWalk: (substitution walk: right).