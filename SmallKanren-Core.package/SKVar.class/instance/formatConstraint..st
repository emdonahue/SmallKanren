printing
formatConstraint: aConstraint
	aConstraint isConstraint ifFalse: [ ^ aConstraint asString ].
	^ '<', self label, aConstraint asString, '>'.