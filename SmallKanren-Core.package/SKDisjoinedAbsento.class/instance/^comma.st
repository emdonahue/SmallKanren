debugging
, aConstraint
	^ aConstraint asConstraint isAbsento 
		ifTrue: (self class absent: absent rest: rest, aConstraint asConstraint) 
		ifFalse: (SKMultiConstraint first: self rest: aConstraint asConstraint).