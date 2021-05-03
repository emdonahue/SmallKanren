checking
disunify: aVal in: aSubstitution
	^ (self disunify: aVal with: (aSubstitution walk: val) in: aSubstitution).