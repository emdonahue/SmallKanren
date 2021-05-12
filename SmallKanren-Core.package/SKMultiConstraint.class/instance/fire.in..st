checking
fire: aVal in: aState
	<todo>
	| s |
	s := first fire: aVal in: aState.
	s isFailure ifTrue: [ ^ s ].
	^ rest fire: aVal in: s.