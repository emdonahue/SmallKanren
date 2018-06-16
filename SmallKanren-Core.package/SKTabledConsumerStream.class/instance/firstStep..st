accessing
firstStep: aRunner
	self hasAnswers
		ifTrue: [ ^ self consumeAnswer ].
	^ SKStream failure.