checking
check: aVal in: aState
	| s |
	s := first check: aVal in: aState.
	s isFailure ifTrue: [ ^ s ].
	^ rest check: aVal in: s.