as yet unclassified
tabledPlus: aTabledStream
	self isWaitingStream
		ifTrue: [ ^ SKReusedMPlus new
				left: aTabledStream;
				right: self ].
	^ super plus: aTabledStream.