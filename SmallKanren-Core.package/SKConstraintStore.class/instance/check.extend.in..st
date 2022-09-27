constraintstore
check: aVar extend: aValue in: aState
	| c s |
	c := self at: aVar.
	s := c check: aValue extend: aVar in: aState.
	s ifFailure: [ ^ s ].
	^ c eager: aVar val: aValue in: s