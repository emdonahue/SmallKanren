streaming
fairComplete: aState
	self halt.
	^ self class first: left rest: (right fairComplete: aState).