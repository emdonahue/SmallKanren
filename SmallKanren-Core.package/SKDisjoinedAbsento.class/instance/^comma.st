debugging
, aConstraint
	^ aConstraint asConstraint isAbsento 
		ifTrue: (SKDisjoinedAbsento absent: absent rest: rest, aConstraint asConstraint) 
		ifFalse: (SKMultiConstraint first: self rest: aConstraint asConstraint).