streaming-mplus
tabledPlus: aTabledStream
	self isWaitingStream
		ifTrue: [ ^ SKReusedMPlus new
				left: aTabledStream;
				right: self ].
	^ self plus: aTabledStream.