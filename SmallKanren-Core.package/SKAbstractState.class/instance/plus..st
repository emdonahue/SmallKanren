streaming
plus: anAnswer
	self isIncomplete ifFalse: [ ^ anAnswer complete: self ].
	^ super plus: anAnswer.