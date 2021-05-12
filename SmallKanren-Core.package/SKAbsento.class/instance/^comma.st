debugging
, aConstraint
	"Creates a multi constraint, although if aConstraint is absento just merges them into a disjoined."
	^ aConstraint asConstraint isAbsento 
		ifTrue: (SKDisjoinedAbsento absent: absent rest: aConstraint asConstraint) 
		ifFalse: (SKMultiConstraint first: self rest: aConstraint asConstraint).