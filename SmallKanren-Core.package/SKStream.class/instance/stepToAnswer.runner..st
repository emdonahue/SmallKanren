debugging
stepToAnswer: nSteps runner: aRunner
	| s |
	s := self.
	nSteps
		timesRepeat: [ s := s step: aRunner.
			s hasAnswer
				ifTrue: [ ^ s ] ].
	^ s.