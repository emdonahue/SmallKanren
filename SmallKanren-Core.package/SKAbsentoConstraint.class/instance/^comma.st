reducing
, aConstraint
	^ aConstraint isAbsento ifTrue: self | aConstraint ifFalse: (SKMConstraint first: self rest: aConstraint).