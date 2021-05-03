merging
merge3: aConstraint
	| c s r |
	c := self simplify: aConstraint. "Simplify the new constraint."
	c isUnsatisfiable ifTrue: [ ^ c ].
	"s := c simplify: self." "Simplify self using the raw constraint."
	s := self.
	c isSatisfied ifTrue: [ ^ s ].
	s isSatisfied ifTrue: [ ^ c ].
	r := s consolidatedBy: c.
	r == s ifTrue: [ ^ SKMultiConstraint first: c rest: s ].
	^ r.
	"^ SKMConstraint first: c rest: s."