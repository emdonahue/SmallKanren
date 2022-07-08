streaming-mplus
+ anAnswer
	"+ is a 2-level operation so that each stream can decide whether it takes priority."
	self isWaitingStream ifTrue: [ ^ anAnswer tabledPlus: self ].
	^ anAnswer plus: self