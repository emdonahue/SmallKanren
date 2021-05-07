checking
check: aVal in: aState
	<todo> "if aVal is var and none of the sub constraints need to do more than reassign to the var, this entire constraint can just assign itself at once."
	| s |
	s := first check: aVal in: aState.
	s isFailure ifTrue: [ ^ s ].
	^ rest check: aVal in: s.