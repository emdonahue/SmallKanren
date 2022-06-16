arithmetic
+ anAnswer
	self isWaitingStream
		ifTrue: [ ^ anAnswer tabledPlus: self ].
	^ super + anAnswer.