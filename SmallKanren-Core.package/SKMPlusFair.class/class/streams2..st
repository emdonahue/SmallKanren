accessing
streams2: aQueue
	aQueue isEmpty ifTrue: [ ^ SKStream failure.].
	aQueue size = 1 ifTrue: [ ^ aQueue first ].
	^ self new streams: aQueue.