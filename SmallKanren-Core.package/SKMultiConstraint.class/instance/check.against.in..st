checking
check: aVar against: aVal in: aState
	| s |
	s := first check: aVar against: aVal in: aState.
	s isFailure ifTrue: [ ^ s ].
	^ rest check: aVar against: aVal in: s.