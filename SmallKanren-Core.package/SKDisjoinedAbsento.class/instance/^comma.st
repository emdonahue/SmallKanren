debugging
, aConstraint
	^ aConstraint isAbsento 
		ifTrue: (SKDisjoinedAbsento absent: excluded rest: next, aConstraint) 
		ifFalse: (SKMConstraint first: self rest: aConstraint).