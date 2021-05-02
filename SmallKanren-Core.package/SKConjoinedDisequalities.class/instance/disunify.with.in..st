checking
disunify: aVar with: aVal in: aSubstitution
	^ (aSubstitution disunify: aVar with: aVal) disunify: rest.