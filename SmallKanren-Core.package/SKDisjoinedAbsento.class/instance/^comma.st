debugging
, aConstraint
	^ aConstraint isAbsento 
		ifTrue: (SKDisjoinedAbsento absent: absent rest: rest, aConstraint) 
		ifFalse: (SKMultiConstraint first: self rest: aConstraint).