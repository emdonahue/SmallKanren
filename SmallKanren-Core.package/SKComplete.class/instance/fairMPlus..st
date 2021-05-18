streaming
fairMPlus: aStream
	^ self class answer: left stream: (right fairMPlus: aStream).