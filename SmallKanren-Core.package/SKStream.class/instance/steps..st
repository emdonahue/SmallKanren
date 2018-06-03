streaming
steps: nSteps
	| s |
	s := self.
	nSteps timesRepeat: [ s := s step ].
	^ s