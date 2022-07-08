tabling
tabledMPlus: aStream
	self isWaitingStream ifTrue: [ ^ aStream tabledPlus: self ].
	^ aStream + self.