debugging
= aConstraint
	aConstraint class = self class ifFalse: [ ^ false ].
	^ (self subsumedBy: aConstraint) & (aConstraint subsumedBy: self).