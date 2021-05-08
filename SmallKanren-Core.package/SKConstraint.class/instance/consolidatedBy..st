merging
consolidatedBy: aConstraint
	<type: #(NotC SKMultiConstraint) returns: #SKConstraint>
	"Called by single constraints to begin a multi constraint."
	| s c |
	c := self compress: aConstraint.
	c == self ifFalse: [ ^ c ].
	s := aConstraint simplify: self.
	s = self class satisfied ifTrue: [ ^ aConstraint ].
	s = self class unsatisfiable ifTrue: [ ^ s ].
	s == self ifTrue: [ ^ self ].
	^ aConstraint add: s.