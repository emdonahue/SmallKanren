debugging
stepToAnswer: nSteps
	| s |
	s := self.
	nSteps timesRepeat: [ s := s step. 
		s hasAnswer ifTrue: [ ^ s ] ].
	^ s