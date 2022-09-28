constraintstore
check: aVar value: aValue
	| c s |
	c := self constraintAt: aVar.
	s := c check: aValue value: aVar in: self.
	s ifFailure: [ ^ s ].
	^ c eager: aVar val: aValue in: s