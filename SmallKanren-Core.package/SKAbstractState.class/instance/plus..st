streaming
plus: anAnswer
	"If this answer is already fully complete, just return it rather than interleaving."
	self isIncomplete ifFalse: [ ^ anAnswer complete: self ].
	^ super plus: anAnswer.