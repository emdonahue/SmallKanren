constraintstore
check: aVar value: aValue

	| c s |
	c := self constraintAt: aVar.
	s := c check: aVar value: aValue in: self.
	s ifFailure: [ ^ s ].
	^ c eager: aVar val: aValue in: s