merging
merge2: aConstraint
	| c s r |
	c := self simplify: aConstraint. "Simplify the new constraint."
	c isUnsatisfiable ifTrue: [ ^ c ].
	"s := c simplify: self." "Simplify self using the raw constraint."
	s := self.
	c isSatisfied ifTrue: [ ^ s ].
	s isSatisfied ifTrue: [ ^ c ].
	r := s consolidate: c.
	r = s ifTrue: [ ^ c , s ].
	^ r
	"^ SKMConstraint first: c rest: s."