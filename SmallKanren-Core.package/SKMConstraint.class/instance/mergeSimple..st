merging
mergeSimple: aConstraint
	<todo>
	| c s r |
	c := self simplify: aConstraint. "Simplify the new constraint."
	c isUnsatisfiable ifTrue: [ ^ c ].
	"s := c simplify: self." "Simplify self using the raw constraint."
	s := self.
	c isSatisfied ifTrue: [ ^ s ].
	s isSatisfied ifTrue: [ ^ c ]. "redundant now"
	r := s consolidatedBy: c.
	r == s ifTrue: [ ^ self class first: c rest: s ].
	^ r.
	"^ SKMConstraint first: c rest: s."