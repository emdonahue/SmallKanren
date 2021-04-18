checking
disunify: aVar with: aVal in: aSubstitution
	right = aVar ifTrue: [ ^ (aSubstitution disunify: left with: aVal) disunify: rest ].
	^ (aSubstitution disunify: aVal with: right) disunify: rest.