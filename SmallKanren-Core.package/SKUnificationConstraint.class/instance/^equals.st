comparing
= aConstraint
	self class = aConstraint class ifFalse: [ ^ false ].
	^ term = aConstraint term.