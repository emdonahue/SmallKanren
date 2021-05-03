debugging
= aDisequality 	
	self class = aDisequality asConstraint class ifFalse: [ ^ false ].
	^ (self subsumes: aDisequality asConstraint) & (aDisequality asConstraint subsumes: self).