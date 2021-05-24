streaming
steps: nSteps runner: aRunner
	| s |
	s := self.
	nSteps timesRepeat: [ s := s step: aRunner ].
	^ s.