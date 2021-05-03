checking
disunify: aVar with: aVal in: aSubstitution
	^ (aSubstitution unify: aVar noWalk: aVal) disunify: rest.