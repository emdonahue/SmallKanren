removing
removeFirst
	^ rest isEmpty
		ifTrue: rest 
		ifFalse: [ SKReverseDelayedQueue reverse: rest ]