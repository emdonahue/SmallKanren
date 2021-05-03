debugging
, aConstraint
	"Creates a multi constraint, although if aConstraint is absento just merges them into a disjoined."
	^ aConstraint isAbsento 
		ifTrue: (SKDisjoinedAbsento absent: absent rest: aConstraint) 
		ifFalse: (SKMultiConstraint first: self rest: aConstraint).