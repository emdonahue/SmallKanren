streaming-mplus
tabledPlus: aTabledStream
	self isWaitingStream
		ifTrue: [ ^ SKReusedMPlus new
				left: aTabledStream;
				right: self ].
	"At this point, the other stream is a waiting stream and this stream is not, so the current stream should win in order to better supply producers that might help the waiting stream get unstuck."
	^ self mplus: aTabledStream.